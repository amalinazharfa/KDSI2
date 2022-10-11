<?php

    include "config.php";

?>
<h2>TABEL ALUMNI INFORMATIKA</h2>
<table border="1">
    <tr>
        <td>NIM</td>
        <td>NAMA</td>
        <td>JUDUL SKRIPSI</td>
        <td>TAHUN MASUK</td>
        <td>TAHUN LULUS</td>
    </tr>
	
	
    <?php
		$no = 1;
        $tampil = mysqli_query($mysqli, "select * from alumni_informatika");
        while($hasil = mysqli_fetch_array($tampil)){
    ?>
    <tr>
        <td><?php echo $hasil['NIM']; ?></td>
        <td><?php echo $hasil['NAMA']; ?></td>
        <td><?php echo $hasil['JUDUL_SKRIPSI']; ?></td>
        <td><?php echo $hasil['TAHUN_MASUK']; ?></td>
		<td><?php echo $hasil['TAHUN_LULUS']; ?></td>
    </tr>
    <?php
        }
    ?>
</table>