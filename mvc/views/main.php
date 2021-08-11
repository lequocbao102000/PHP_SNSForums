<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once("./mvc/views/head.php");?>

</head>

<body>
    <?php
    if (isset($_SESSION['check'])&&$_SESSION['check']==true){
        echo '<script>
        swal("Login Success", "", "success");</script>' ;
        unset($_SESSION['check']);
    }
    ?>

    <!-- ##### Header Area Start ##### -->
    <?php require_once("./mvc/views/header.php");?>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Welcome Area Start ##### -->
    <?php require_once("./mvc/views/banner.php");?>
    <!-- ##### Welcome Area End ##### -->


    <!-- body -->
    
    <section class="new_arrivals_area section-padding-80 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <h2>Top 10 được yêu thích nhất</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="popular-products-slides owl-carousel">
                        <?php
                            $row = $data['top10'];
                            for ($i=0;$i<count($row);$i++){
                                echo '
                                <div class="single-product-wrapper">
                                    
                                    <div class="product-img">
                                        <img src="'.BASE_URL.'/uploads/'.$row[$i]['img_main'].'" alt="">
                                    </div>
                                   
                                    <div class="product-description">
                                        <span>'.$row[$i]['luotlike'].' lượt thích</span>
                                        <a href="single-product-details.html">
                                            <h6>'.$row[$i]['name'].'</h6>
                                        </a>
                                    
        
                                    </div>
                                </div>';
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
           

                <div class="section-heading text-center">
                        <h2>Top 10 Mới nhất</h2>
                    </div>

            <div class="row">
                <div class="col-12">
                    <div class="popular-products-slides owl-carousel">

                    <?php
                            $row = $data['new'];
                            for ($i=0;$i<count($row);$i++){
                                echo '
                                <div class="single-product-wrapper">
                                    
                                    <div class="product-img">
                                        <img src="'.BASE_URL.'/uploads/'.$row[$i]['img_main'].'" alt="">
                                    </div>
                                   
                                    <div class="product-description">
                                        <span>New</span>
                                        <a href="single-product-details.html">
                                            <h6>'.$row[$i]['name'].'</h6>
                                        </a>
                                    
        
                                    </div>
                                </div>';
                            }
                        ?>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### body ##### -->

    <!-- ##### Footer Area Start ##### -->
    <?php require_once("./mvc/views/footer.php");?>

</body>

</html>