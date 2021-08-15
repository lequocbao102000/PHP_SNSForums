<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once("./mvc/views/head.php");?>
    <style>
        /* unvisited link */
        a:link {
        color: black;
        }

        /* visited link */
        a:visited {
        color: black;
        }

        /* mouse over link */
        a:hover {
        color: green;
        }

        /* selected link */
        a:active {
        color: green;
        } 
    </style>

</head>

<body>
<?php
    if (isset($_SESSION['checklike'])){
        if ($_SESSION['checklike']==true){
            echo '<script>
            swal("Đã thêm vào danh sách yêu thích", "", "success");</script>';
        }
        else{
            echo '<script>
            swal("Bạn đã thích mục này rồi!", "Xem trong danh sách yêu thích bạn nhé!");</script>';
        }
        unset($_SESSION['checklike']);
    }
?>
    

    <!-- ##### Header Area Start ##### -->
    <?php require_once("./mvc/views/header.php");?>
    <!-- ##### Header Area End ##### -->
    
    <!-- body -->
    <div class="single-blog-wrapper">

    <!-- Single Blog Post Thumb -->
    <?php
        $row = $data['detail'];     
        if (count($row)<1){
            header('Location:'.BASE_URL);
        }
        $img_extra = explode("/",filter_var(trim($row[0]['img_extra'],"/")));
    ?>
    
    <div style="margin:auto;width:50%">
        </br>
        <img style="width:1000px" src="<?php echo BASE_URL;?>/uploads/<?php echo $row[0]['img_main'];?>" alt="">
    </div>
    </br>
    <div style="margin:auto;width:50%">
        <a href="<?php echo BASE_URL;?>/Forums/Like?like=<?php echo $row[0]['id'];?>"><img style="width:30px" src="<?php echo BASE_URL;?>/public/img/core-img/heart.svg" alt=""> Thêm vào danh sách yêu thích</a>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8">
                <div class="regular-page-content-wrapper section-padding-80">
                    <div class="regular-page-text">
                        <h2 class="text-center"><?php echo $row[0]['name'];?><p><?php echo $row[0]['name_child'];?></p></h2>
                    
                        <blockquote>
                            <h6><i class="fa fa-quote-left" aria-hidden="true"></i> <?php echo $row[0]['description'];?></h6>
                        </blockquote>
                    </div>
                    </div> 
            </div>
        </div>
        <div class="text-center">
        <h5>Trailer: <?php echo ''.$row[0]['name'];?></h5>
        <?php echo $row[0]['trailer'];?>
        </br></br></br>
        <hr>
        <h5>Một số hình ảnh của <?php echo $row[0]['name'];?></h5>
        <div class="row" style="width:900px;margin:auto">
                        <div class="col-lg-8">
                            <div class="single_product_thumb clearfix" >
                                <div class="product_thumbnail_slides owl-carousel">
                                    <?php
                                        for ($j=0;$j<count($img_extra);$j++){
                                        echo '<img style="height:400px" src="'.BASE_URL.'/uploads/'.$img_extra[$j].'" alt="">';
                                    }
                                     ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                        <div id="product-imgs">
                                    <?php
                                        for ($k=0;$k<count($img_extra);$k++){
                                        echo '<div class="product-preview">
                                        <img style="width:100%;height:100px" src="'.BASE_URL.'/uploads/'.$img_extra[$k].'" alt="">
                                        </br>
                                        </div>';
                                    }
                                     ?>

							

						</div>
                    </div>
        </div>
        <div class="text-center">
        <hr>
        <h5> Cấu hình đề nghị </h5>
        </div>
        <div class="text-center" style="border: thick double #B1BCBF;width:900px;margin:auto">
            <p ><?php echo $row[0]['config'];?></p>
            <a style="font-size:30px" href="<?php echo $row[0]['link'];?>" target="_blank">DOWNLOAD</a>
            </br></br>
        </div>
        </br></br></br>
        
    </div>
    </div>	
   
    <!-- ##### body ##### -->

    <!-- ##### Footer Area Start ##### -->
    <?php require_once("./mvc/views/footer.php");?>

</body>

</html>