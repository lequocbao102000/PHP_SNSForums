<header class="header_area">
        <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
            <!-- Classy Menu -->
            <nav class="classy-navbar" id="essenceNav">
                <!-- Logo -->
                <a class="nav-brand" href="<?php echo BASE_URL;?>/Home"><img src="<?php echo BASE_URL;?>/public/img/core-img/logo.png" style="width:100px" alt=""></a>
                <!-- Navbar Toggler -->
                <div class="classy-navbar-toggler">
                    <span class="navbarToggler"><span></span><span></span><span></span></span>
                </div>
                <!-- Menu -->
                <div class="classy-menu">
                    <!-- close btn -->
                    <div class="classycloseIcon">
                        <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                    </div>
                    <!-- Nav Start -->
                    <div class="classynav">
                        <ul>
                            <li><a href="#">Games</a>
                                <div class="megamenu">
                                    <?php
                                    $row_parent = $data['home_parent'];
                                    for ($i=0;$i<count($row_parent);$i++){
                                        echo '<ul class="single-mega cn-col-4">
                                                <li class="title">'.$row_parent[$i]['name_parent'].'</li>';
                                                $child = new HomeModel;
                                                $row_child = $child->GetMenuChild($row_parent[$i]['id_parent']);
                                                for ($j=0;$j<count($row_child);$j++){
                                                    echo '<li><a href="">'.$row_child[$j]['name_child'].'</a></li>';
                                                }
                                        echo  '</ul>';
                                    }
                                    ?>
                                    
                                </div>
                            </li>
                            <li><a href="#">Phần Mềm</a>
                                <ul class="dropdown">
                                    <?php
                                    $row_software = $data['software'];
                                    for ($k=0;$k<count($row_software);$k++){
                                        echo '<li><a href="index.html">'.$row_software[$k]['name_child'].'</a></li>';
                                    }
                                    ?>
                                </ul>
                            </li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                    <!-- Nav End -->
                </div>
            </nav>

            <!-- Header Meta Data -->
            <div class="header-meta d-flex clearfix justify-content-end">
                <!-- Favourite Area -->
                <div class="favourite-area">
                    <a href="#"><img src="<?php echo BASE_URL;?>/public/img/core-img/heart.svg" alt=""></a>
                </div>
                <!-- User Login Info -->
                <div class="user-login-info">
                    <div class="classynav">
                    <ul>
                    <li><a href="#"><img src="<?php echo BASE_URL;?>/public/img/core-img/user.svg" alt=""></a>
                        <ul class="dropdown">
                            <li><a href="<?php echo BASE_URL;?>/Account/Logout">Logout</a></li>
                        </ul>
                    </li>
                    </ul>
                </div>
                
            </div>

        </div>
    </header>