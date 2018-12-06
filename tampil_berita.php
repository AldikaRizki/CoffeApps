<?php
//include file koneksi
require 'koneksi.php';
//buat QUery perintah untuk menampilkan semua data
//Secara descending berdasarkan ID
$sql_get_berita = 'SELECT * FROM tb_berita ORDER BY id DESC';
$query = $conn->query($sql_get_berita);

//variable penampung array sementara
$response_data = null;

while ($data = $query->fetch_assoc()) {
 // tambahkan data yg di seleksi ke dalam array
 $response_data[] = $data;
}

//cek apakah datanya null?
if (is_null($response_data)){
  //jika ya buat status response menjadi false
  $status = false;
}else {
  //jika tidak, buat status response menjadi true
  $status = true;
}

//set type header response ke JSON
header('Content-Type: application/json');
//bungkus data dalam array
$response = ['status' => $status, 'berita' => $response_data];
//tampilkan dan convert ke format json
echo json_encode($response);
 ?>
