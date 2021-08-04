<?php
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SNS Forums</title>
        <link rel="icon" href="<?php echo BASE_URL;?>/public/img/core-img/logo.png">
        <link type="text/css" rel="stylesheet" href="<?php echo BASE_URL;?>/public/css/styleaccount.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>

    <body>
        <?php if (isset($data['kq'])&&isset($_POST['btn_login'])){
            if ($data['kq']==true){
                echo '<script>
                swal("Login Success", "", "success");</script>' ;
                
            }
            else{
                echo '<script>
                swal("Login Failed", "", "error");</script>' ;
            }
            
        }
        ?>
    
    
    <?php require_once("./mvc/views/account/".$data['page'].".php");
    ?>
    
    
    </body>   
</html>


