<?php
function myCountChar($x,$y) {
	$jumlah=0;
	$string=strlen($x);
	for($i=0; $i<$string;$i++){
		if($x{$i}==$y) {
			$jumlah++;
		}
	}
	return $jumlah;
}
echo myCountChar("bootcamp","o");
echo "<br>";
echo myCountChar("arkademy","k");
?>