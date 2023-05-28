<?php require_once("./../../controller/authdok.php");
include './../../controller/koneksi.php';
$query = mysqli_query($con, "SELECT * FROM dokter WHERE id_dokter = '" . $_SESSION['dokter'] . "' ");
$d = mysqli_fetch_object($query);
$user = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM dokter WHERE id_dokter = '" . $_SESSION['dokter'] . "' "));
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Dokter <?php echo $d->nama ?></h1>
    <a href="./../../controller/logout.php">logout</a>
</body>
</html>