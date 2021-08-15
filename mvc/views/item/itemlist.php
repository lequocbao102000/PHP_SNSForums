</br></br>
<?php
    $tieude = 'Tất cả games và phần mềm';
    $row = $data['item'];
    if (isset($_POST['btnsearch'])){
        $tieude = 'Tìm kiếm theo'.' '.$_POST['search'];
    }
    else if (isset($row[0]['name_child'])){
        $tieude = $row[0]['name_child'];
    }
?>
<div class="container">
            <div class="text-center">
                <h4><?php echo $tieude;?></h4>
                    </br>

            </div>
            <div class="text-right">
                    <form action="<?php echo BASE_URL;?>/Forums" method="post">
                        <input style="width:400px;height:30px;border-radius: 10px;border:auto" type="text" name="search" required="true" placeholder="Nhập từ khóa muốn tìm kiếm">
                        <button type="submit" name="btnsearch"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                    </br>
                </div>
            <div class="row">
                <?php
                    
                    for($i=0;$i<count($row);$i++){
                        echo '<div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div class="product-img">
                                <img src="'.BASE_URL.'/uploads/'.$row[$i]['img_main'].'" alt="">

                            </div>

                            <!-- Product Description -->
                            <div class="product-description">
                                <a href="'.BASE_URL.'/Forums/Item?item='.$row[$i]['id'].'">
                                    <h5>'.$row[$i]['name'].'</h5>
                                </a>
                            </div>
                        </div>
                    </div>
                    ';
                    }
                ?>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>