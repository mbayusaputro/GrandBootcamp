<?php
function count_handshake ($n) {
	$jumlah=0;
	for($i=0;$i<=$n;$i++) {
		for($j=1;$j<=$i;$j++){
			$jumlah=$j*($j-1);
			$jumlah=$jumlah/2;
		}
	}
	return $jumlah;
}

echo count_handshake(3);
echo "<br>";
echo count_handshake(6);
?>