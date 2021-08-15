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
    <!-- ##### Header Area Start ##### -->
    <?php require_once("./mvc/views/header.php");?>
    <!-- ##### Header Area End ##### -->
    <?php
    if (isset($_SESSION['checkremove'])){
        if ($_SESSION['checkremove']==true){
            echo '<script>
            swal("Đã xóa khỏi danh sách", "", "success");</script>';
        }
        else{
            echo '<script>
            swal("Chưa xóa thành công", "", "error");</script>';
        }
        unset($_SESSION['checkremove']);
    }
    ?>

    <!-- body -->
    </br>
    <h2 class="text-center">Danh sách yêu thích của bạn</h2>
    </br>
    <?php
        $row = $data['listlike'];
        if (count($row)==0){
            echo '</br></br></br><h5 class="text-center">Danh sách hiện đang trống</h5></br></br></br></br></br></br></br></br></br>';
        }
    ?>
    <?php
        for($i=0;$i<count($row);$i++){
            echo '<div style="border:4px solid #AAB5B9;border-radius:50px 25px;margin:auto;width:50%;padding:30px">
            <div class="row">
                <div class="col-lg-6">
                    <img style="margin:auto" src="'.BASE_URL.'/uploads/'.$row[$i]['img_main'].'">
                </div>
                <div class="col-lg-6 mt-4">
                    <h5>'.$row[$i]['name'].'</h5>
                    <a href="'.BASE_URL.'/Forums/Item?item='.$row[$i]['id'].'"><img style="width:30px" src="'.BASE_URL.'/public/img/core-img/seedetail.png" alt=""> Xem chi tiết</a><p></p>
                    <a href="'.BASE_URL.'/User?removelike='.$row[$i]['id'].'"><img style="width:30px" src="'.BASE_URL.'/public/img/core-img/nolike.png" alt=""> Xóa khỏi danh sách yêu thích</a>
                </div>
        
            </div>
            </div>
            </br>';
        }
    ?>

    <!-- ##### body ##### -->

    <!-- ##### Footer Area Start ##### -->
    <?php require_once("./mvc/views/footer.php");?>

</body>

</html>