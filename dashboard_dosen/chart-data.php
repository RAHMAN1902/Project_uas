<?php
include '../fuction.php'; 

// Simulasi data perkembangan siswa selama 1 tahun (12 bulan)
$data = [
    "January" => rand(50, 100),
    "February" => rand(50, 100),
    "March" => rand(50, 100),
    "April" => rand(60, 110),
    "May" => rand(75, 125),
    "June" => rand(95, 145),
    "July" => rand(120, 170),
    "August" => rand(150, 200),
    "September" => rand(185, 235),
    "October" => rand(225, 275),
    "November" => rand(270, 330),
    "December" => rand(320, 370),
];

echo json_encode([
    "labels" => array_keys($data),
    "data" => array_values($data)
]);
?>