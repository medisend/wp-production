<?php
$file = $_GET['file'];
$ext = pathinfo($file, PATHINFO_EXTENSION);
header("Content-type: application/".$ext);
header("Content-Disposition: attachment; filename=". $file);
readfile($file);
?>