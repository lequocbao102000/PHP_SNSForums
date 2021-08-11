<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link type="text/css" rel="stylesheet" href="<?php echo BASE_URL;?>/public/css/styleadmin.css"/>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <h2 style= "color:red">ADMIN</h2>
            
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Quản lý Loại </div>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/AddCategoryParent">Thêm loại</a>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/EditCategoryParent">Chỉnh sửa loại</a>

                            <div class="sb-sidenav-menu-heading">Quản lý Thể Loại </div>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/AddCategoryChild">Thêm thể loại</a>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/EditCategoryChild">Chỉnh sửa thể loại</a>

                            <div class="sb-sidenav-menu-heading">Quản lý Games và Phần mềm </div>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/AddItem">Thêm mới</a>
                            <a class="nav-link" href="<?=BASE_URL?>/Admin/EditItem">Chỉnh sửa</a>

                            
                            <div class="sb-sidenav-menu-heading">Options </div>
                            <a class="nav-link" href="<?=BASE_URL?>/Account/Logout">Logout</a>
                        </div>
                    </div>
                    
                </nav>
            </div>
            <div id="layoutSidenav_content">
             <?php
                if (isset($data['admin_page'])){
                    require_once("./mvc/views/admin/".$data['admin_page'].".php");
                }
             ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        
    </body>
</html>
