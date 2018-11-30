<?php
$produk = array(
	'itemId' => ('12341822'), 
	'itemName' => ('basic t-shirt'), 
	'price' => 700000,
	'availableColorAndSize' => array (
		'red' => ['S','M','L'],'solid black' => ['M','L']
	),
	'freeShiping' => false,
);

$json = json_encode($produk);
echo $json;
?>