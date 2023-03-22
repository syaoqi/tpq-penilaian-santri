<!DOCTYPE html>
<html>
<head>
    <title>Data Santri Kelas II</title>
    <link rel="stylesheet" type="text/css" href="styletampil.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"><b>TPQ</b></a>
  <a class="navbar-brand btn btn-light">Data Santri Kelas II</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
	<li class="nav-item">
        <a class="btn btn-warning" href="home.php">Kembali</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container">
<div class="table-responsive">
<a class="button" href="input_profil2.php">Tambah Santri</a>

	<h4>DAFTAR SANTRI KELAS II</h4>
	<table class="table table-bordered table-striped table-hover">

		<thead>
	
			<tr>
				<th>No</th>
				<th>Nis</th>
				<th>Nama </th>
				<th>Umur </th>
				<th>Tanggal Lahir </th>
				<th>Alamat</th>
				<th>Email</th>
				<th>Tools</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<?php
		include "koneksi.php";
		$tampil = "SELECT * FROM tbl_kelas2 ORDER BY nis2 DESC";
		$str = mysqli_query($koneksi, $tampil);
		$no = 1;
		foreach ($str as $santri){
			?>
			<tr>
			<td><?php echo $no ?></td>
				<td><?php echo $santri['nis2']; ?></td>
				<td><?php echo $santri['nama2']; ?></td>
				<td><?php echo $santri['umur']; ?></td>
				<td><?php echo $santri['tgl']; ?></td>
				<td><?php echo $santri['alamat']; ?></td>
				<td><?php echo $santri['email']; ?></td>
				<td>
					<a href="ubah_profil2.php?nis2=<?php echo $santri['nis2'];?>" type="button" class="btn btn-warning btn-sm">EDIT</a>
					<a href="hapus2.php?nis2=<?php echo $santri['nis2'];?>" type="button" class="btn btn-danger btn-sm" onclick="return confirm('yakin mau di hapus?')">HAPUS</a>
				</td>
				<td>
					<a href="input_nilai2.php?nis2=<?php echo $santri['nis2'];?>" type="button" class="btn btn-primary btn-sm">Tambah</a>
				</td>
			</tr>
	<?php
			$no++;
			
		}
		?>

	</table>
	</div>
</div>
</body>
</html>