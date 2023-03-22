<!DOCTYPE html>
<html>
<head>
    <title>Nilai Kelas II</title>
    <link rel="stylesheet" type="text/css" href="styletampil.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"><b>TPQ</b></a>
  <a class="navbar-brand btn btn-light">Data Nilai Kelas II</a>
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
	<h4>NILAI KELAS II</h4>
	<div class="table-responsive">
	<table class="table table-bordered table-striped table-hover">
		<thead>
			<tr>
				<th>No</th>
				<th>Nis</th>
				<th>Iqra 4-5-6</th>
                <th>Hafalan Do'a</th>
                <th>Hafalan Juz Amma</th>
                <th>Hafalan Amaliah</th>
                <th>Tauhid</th>
				<th>Tools</th>
			</tr>
		</thead>
			<?php
		include "koneksi.php";
		$tampil = "SELECT * FROM tbl_nilai2 ORDER BY nis2 DESC";
		$str = mysqli_query($koneksi, $tampil);
		$no = 1;
		foreach ($str as $santri){
			?>
			<tr>
			<td><?php echo $no ?></td>
				<td><?php echo $santri['nis2']; ?></td>
				<td><?php echo $santri['iqra_456']; ?></td>
				<td><?php echo $santri['h_doa']; ?></td>
				<td><?php echo $santri['h_jus_am']; ?></td>
				<td><?php echo $santri['p_am']; ?></td>
				<td><?php echo $santri['tauhid']; ?></td>
				<td>
					<a href="ubah_nilai2.php?nis2=<?php echo $santri['nis2'];?>" type="button" class="btn btn-warning btn-sm">EDIT</a>
					<a href="hapusn2.php?nis2=<?php echo $santri['nis2'];?>" type="button" class="btn btn-danger btn-sm" onclick="return confirm('yakin mau di hapus?')">HAPUS</a>
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