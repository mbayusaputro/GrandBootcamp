<?php include "head.php"; ?>
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="alert" role="alert">
                    <p align="center"><b>Hasil query dari soal <i>Nomor 6</i>.</b></p>
                    <p align="center">SELECT product_categories.id,product_categories.name, COUNT(products.id) AS jumlah FROM products INNER JOIN product_categories ON products.category_id=product_categories.id GROUP BY product_categories.id;</b></p>
                    <hr>
                    <table class="table table-bordered table-striped table-admin table-responsive-sm">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Jumlah Produk</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            include 'koneksi.php';
                            $data = mysqli_query($con,"SELECT product_categories.id,product_categories.name, COUNT(products.id) AS jumlah FROM products INNER JOIN product_categories ON products.category_id=product_categories.id GROUP BY product_categories.id");
                            while($d = mysqli_fetch_array($data)){
                                ?>
                                <tr>
                                    <td><?php echo $d['id']; ?></td>
                                    <td><?php echo $d['name']; ?></td>
                                    <td><?php echo $d['jumlah']; ?></td>
                                </tr>
                                <?php } ?>                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php include "foot.php"; ?>