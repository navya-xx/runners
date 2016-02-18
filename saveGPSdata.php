<?php

$file = 'gpscords.txt';



$content = $_POST['gpslist'];
$status = $_POST['status'];

if($status == 0) {
	$myfile = fopen($file, "w")  or die("Unable to open file!");
	}
else {
	$myfile = fopen($file, "a")  or die("Unable to open file!");
}

fwrite($myfile, $content);
fclose($myfile);

print("data success!!")


?>
