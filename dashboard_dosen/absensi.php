<?php
session_start();
include '../fuction.php'; // Koneksi database

// Atur zona waktu agar sesuai
date_default_timezone_set('Asia/Jakarta');

// Cek apakah pengguna sudah login
if (!isset($_SESSION['user'])) {
    header("Location: ../auth/login.php");
    exit();
}

// Ambil daftar nama dosen dari database
$teachers = $conn->query("SELECT * FROM teachers");

$message = ''; // Default empty message
$alert_type = ''; // Default empty alert type

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Ambil data dari form
    $teacher_name = $_POST['teacher_name'];
    $tanggal = date('Y-m-d'); // Tanggal absensi dari server
    $jam = date('H:i:s'); // Jam absensi dari server

    // Validasi jika nama dosen ada di database
    $check_teacher = $conn->query("SELECT * FROM teachers WHERE name = '$teacher_name'");

    if ($check_teacher->num_rows > 0) {
        // Jika nama guru ada di database, simpan absensi dengan waktu server
        $conn->query("INSERT INTO absensi_guru (nama, tanggal, jam) VALUES ('$teacher_name', '$tanggal', '$jam')");
        $message = "Terima kasih, Anda sudah absen!";
        $alert_type = 'success'; // Set alert type to success
    } else {
        // Jika nama guru tidak ditemukan
        $message = "Nama guru tidak ditemukan. Silakan coba lagi!";
        $alert_type = 'error'; // Set alert type to error
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Include SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <title>Absensi Guru</title>
</head>

<body class="bg-gray-100">

    <div class="flex h-screen">

        <!-- Sidebar -->
        <?php include 'slidebar.php'; ?>

        <!-- Main Content -->
        <div class="flex-1 p-6">
            <h2 class="text-3xl font-bold text-gray-800 mb-6">Absensi Guru</h2>

            <!-- Form Absensi -->
            <div class="bg-white shadow-lg rounded-lg p-6 mb-6">
                <form method="POST">
                    <div class="mb-4">
                        <label for="teacher_name" class="block text-gray-700 font-semibold">Pilih Nama Guru</label>
                        <select name="teacher_name" id="teacher_name" class="mt-2 w-full px-4 py-2 border rounded-lg">
                            <option value="">--Pilih Guru--</option>
                            <?php while ($teacher = $teachers->fetch_assoc()) : ?>
                            <option value="<?php echo htmlspecialchars($teacher['name']); ?>"><?php echo htmlspecialchars($teacher['name']); ?></option>
                            <?php endwhile; ?>
                        </select>
                    </div>

                    <button type="submit" class="bg-sky-950 text-white px-6 py-2 rounded-lg hover:bg-sky-400">
                        Absen Sekarang
                    </button>
                </form>
            </div>

            <?php if (!empty($message)) : ?>
            <div class="p-4 mt-4 <?= $alert_type === 'success' ? 'bg-green-100' : 'bg-red-100'; ?> rounded-lg text-center">
                <span class="text-lg font-semibold"><?= htmlspecialchars($message); ?></span>
            </div>
            <?php endif; ?>
        </div>
    </div>

    <?php if (!empty($message) && $alert_type === 'success') : ?>
    <script>
    // SweetAlert2 success alert
    Swal.fire({
        title: 'Berhasil!',
        text: '<?= addslashes($message); ?>',
        icon: 'success',
        confirmButtonText: 'Tutup',
        confirmButtonColor: '#3085d6'
    });
    </script>
    <?php elseif (!empty($message) && $alert_type === 'error') : ?>
    <script>
    // SweetAlert2 error alert
    Swal.fire({
        title: 'Gagal!',
        text: '<?= addslashes($message); ?>',
        icon: 'error',
        confirmButtonText: 'Tutup',
        confirmButtonColor: '#d33'
    });
    </script>
    <?php endif; ?>

</body>

</html>
