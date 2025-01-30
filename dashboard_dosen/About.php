<?php
// Bisa ditambahkan dengan koneksi database jika diperlukan untuk data dinamis
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
    body {
        font-family: 'Inter', sans-serif;
    }
    </style>
</head>

<body class="bg-gray-100">
    <div class="flex flex-col md:flex-row min-h-screen">
        <?php include 'slidebar.php'; ?>

        <!-- Konten utama -->
        <div class="flex-1 md:w-3/4 p-6">
            <!-- Hero Section -->
            <section class="relative bg-cover bg-center h-96 rounded-lg overflow-hidden shadow-md"
                style="background-image: url('../images/sch.png');">
                <div class="absolute inset-0 bg-black opacity-50"></div>
                <div class="absolute inset-0 flex items-center justify-center text-center text-white">
                    <h1 class="text-4xl md:text-5xl font-bold">PresensiNow</h1>
                </div>
            </section>

            <section class="my-12">
                <div class="bg-white p-8 rounded-lg shadow-lg">
                    <h2 class="text-3xl font-bold mb-6 text-gray-800">Tentang Kami</h2>
                    <div class="space-y-4">
                        <p class="text-lg text-gray-700">Kelompok: <strong>5</strong></p>
                        <p class="text-lg text-gray-700">Prodi: <strong>Informatika</strong></p>
                    </div>
                </div>
            </section>

            <!-- Blog Section -->
            <section class="my-12">
                <h2 class="text-3xl font-bold mb-6 text-gray-800">Blog </h2>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Blog Post 1 -->
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                        <img src="../images/rahman2.jpg" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <h3 class="text-xl font-semibold text-gray-800 mb-3">Abdul Rahman_231111036</h3>
                            <p class="text-gray-700 mb-4">I am an Informatics student at Nahdlatul Ulama University Yogyakarta who likes Programmers and Cyber Security</p>
                            <a href="#" class="text-blue-500 hover:underline">Baca Selengkapnya</a>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                        <img src="../images/irfan.jpg" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <h3 class="text-xl font-semibold text-gray-800 mb-3">Miftahul Irfan_231111010</h3>
                            <p class="text-gray-700 mb-4">Mahasiswa Universitas Nahdlatul Ulama Yogyakarata, sesmester 3, Prodii Informatika</p>
                            <a href="#" class="text-blue-500 hover:underline">Baca Selengkapnya</a>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                        <img src="../images/nova.jpg" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <h3 class="text-xl font-semibold text-gray-800 mb-3">Nova Anugrahini_231111040</h3>
                            <p class="text-gray-700 mb-4">Mahasiswa Universitas Nahdlatul Ulama Yogyakarata, sesmester 3, Prodii Informatika</p>
                            <a href="#" class="text-blue-500 hover:underline">Baca Selengkapnya</a>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                        <img src="../images/.jpg" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <h3 class="text-xl font-semibold text-gray-800 mb-3">Muhammad Wisnu_231111006</h3>
                            <p class="text-gray-700 mb-4">Mahasiswa Universitas Nahdlatul Ulama Yogyakarata, sesmester 3, Prodii Informatika</p>
                            <a href="#" class="text-blue-500 hover:underline">Baca Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</body>

</html>