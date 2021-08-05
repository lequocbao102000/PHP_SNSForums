<?php
class Admin extends Controller{
    protected $adminmodel;
    function __construct(){
        $this->adminmodel = $this->model("AdminModel");
        unset($_SESSION['check']);
        if (!isset($_SESSION['username'])||$_SESSION['username']!="admin"){ //Kiem tra dang nhap chua? va username co dung la admin khong
            header('Location:'.BASE_URL);
        }
    }

    function Index(){
        $this->view("masteradmin",[]);
    }

    function AddCategoryParent(){ //Them danh muc cha
        $list_menu = $this->adminmodel->GetMenu();
        $list_parent = $this->adminmodel->GetMenuParent();
        //Khi nhan vao nut tao
        if (isset($_POST['btncreateparent'])){
            if ($this->adminmodel->InsertParent($_POST['name_parent'],$_POST['id_menu'])){ //Neu them thanh cong
                header('Location:'.BASE_URL."/Admin/AddCategoryParent");
            }
            else{ //Them khong thanh cong
                $this->view("masteradmin",[
                    "admin_page"=>"addtype",
                    "parent"=>$list_parent,
                    "menu"=>$list_menu
                ]);
                echo "<script type='text/javascript'>alert('Thêm không thành công');</script>";  
            }
        }
        else{ //Khi khong nhan nut tao
            $this->view("masteradmin",[
                "admin_page"=>"addtype",
                "parent"=>$list_parent,
                "menu"=>$list_menu
            ]);
        }
        
    }

    function EditCategoryParent(){ //Chinh sua danh muc cha
        $list_menu = $this->adminmodel->GetMenu();
        $list_parent = $this->adminmodel->GetMenuParent();
        //Neu co edit
        if (isset($_GET['suaparent'])){
            if (isset($_POST['btneditparent'])){ //Neu nhan nut save
                if ($this->adminmodel->EditParent($_GET['suaparent'],$_POST['name_parent_edit'],$_POST['id_menu_edit'])){ //Neu sua thanh cong
                    header('Location:'.BASE_URL."/Admin/EditCategoryParent");
                }
                else{ //Sua khong thanh cong
                    $this->view("masteradmin",[
                        "admin_page"=>"edittype",
                        "parent"=>$list_parent,
                        "menu"=>$list_menu
                    ]);
                    echo "<script type='text/javascript'>alert('Sửa không thành công');</script>";
                }
            }
            else{ //khong nhan nut save
                $get = $this->adminmodel->GetParentWhereID($_GET['suaparent']);
                $this->view("masteradmin",[
                    "admin_page"=>"edittype",
                    "parent"=>$list_parent,
                    "menu"=>$list_menu,
                    "getparent"=>$get
                ]);
            }
            
        }

        else if (isset($_GET['xoaparent'])){ //Neu co xoa 
            if ($this->adminmodel->DeleteParent($_GET['xoaparent'])){ //Neu xoa thanh cong
                header('Location:'.BASE_URL."/Admin/EditCategoryParent");
            }
            else{ //Neu xoa khong thanh cong
                $this->view("masteradmin",[
                    "admin_page"=>"edittype",
                    "parent"=>$list_parent,
                    "menu"=>$list_menu
                ]);
            }
        }

        else{ //khong edit
            $this->view("masteradmin",[
                "admin_page"=>"edittype",
                "parent"=>$list_parent,
                "menu"=>$list_menu
            ]);
        }
        
    }

    function AddCategoryChild(){ //Them danh muc con
        $list_parent = $this->adminmodel->GetMenuParent();
        $list_child = $this->adminmodel->GetMenuChild();
        //Khi nhan vao nut tao
        if (isset($_POST['btncreatechild'])){
            if ($this->adminmodel->InsertChild($_POST['name_child'],$_POST['id_parent'])){ //Neu them thanh cong
                header('Location:'.BASE_URL."/Admin/AddCategoryChild");
            }
            else{ //Them khong thanh cong
                $this->view("masteradmin",[
                    "admin_page"=>"addchild",
                    "parent"=>$list_parent,
                    "child"=>$list_child
                ]);
                echo "<script type='text/javascript'>alert('Thêm không thành công');</script>";  
            }
        }
        else{ //Khi khong nhan nut tao
            $this->view("masteradmin",[
                "admin_page"=>"addchild",
                "parent"=>$list_parent,
                "child"=>$list_child
            ]);
        }
        
    }

    function EditCategoryChild(){ //Chinh sua danh muc con
        $list_parent = $this->adminmodel->GetMenuParent();
        $list_child = $this->adminmodel->GetMenuChild();
        //Neu co edit
        if (isset($_GET['suachild'])){
            if (isset($_POST['btneditchild'])){ //Neu nhan nut save
                if ($this->adminmodel->EditChild($_GET['suachild'],$_POST['name_child_edit'],$_POST['id_parent_edit'])){ //Neu sua thanh cong
                    header('Location:'.BASE_URL."/Admin/EditCategoryChild");
                }
                else{ //Sua khong thanh cong
                    $this->view("masteradmin",[
                        "admin_page"=>"editchild",
                        "parent"=>$list_parent,
                        "child"=>$list_child
                    ]);
                    echo "<script type='text/javascript'>alert('Sửa không thành công');</script>";
                }
            }
            else{ //khong nhan nut save
                $get = $this->adminmodel->GetChildWhereID($_GET['suachild']);
                $this->view("masteradmin",[
                    "admin_page"=>"editchild",
                    "parent"=>$list_parent,
                    "child"=>$list_child,
                    "getchild"=>$get
                ]);
            }
            
        }

        else if (isset($_GET['xoachild'])){ //Neu co xoa 
            if ($this->adminmodel->DeleteChild($_GET['xoachild'])){ //Neu xoa thanh cong
                header('Location:'.BASE_URL."/Admin/EditCategoryChild");
            }
            else{ //Neu xoa khong thanh cong
                $this->view("masteradmin",[
                    "admin_page"=>"editchild",
                    "parent"=>$list_parent,
                    "child"=>$list_child
                ]);
            }
        }

        else{ //khong edit
            $this->view("masteradmin",[
                "admin_page"=>"editchild",
                "parent"=>$list_parent,
                "child"=>$list_child
            ]);
        }
        
    }

    function AddItem(){ //Them item
        $list_child = $this->adminmodel->GetMenuChild();
        $list_item = $this->adminmodel->GetItem();
        //Khi nhan vao nut tao
        if (isset($_POST['btncreateitem'])){
            $name = $_POST['name_item'];
            $description = $_POST['des_item'];
            $configitem = $_POST['config_item'];
            $img_main = $_FILES['img_main']['name'];
            $linkdown = $_POST['linkdownload'];
            $linktrailer = $_POST['linktrailer'];
            $cate = $_POST['theloai'];

            $arrextra[] = $_FILES['img_extra']['name'];
            $extra ='';
            for ($i=0;$i<count($arrextra[0]);$i++){  //Bien mang thanh chuoi de insert
                $extra = $extra."/".$arrextra[0][$i];
            }
            if ($this->adminmodel->InsertItem($name,$description,$img_main,$extra,$configitem,$linkdown,$linktrailer,$cate)){ //Neu them thanh cong
                move_uploaded_file($_FILES['img_main']['tmp_name'],"uploads/".$img_main.""); //Them hinh anh vao muc upload
                $arrextratmp[] = $_FILES['img_extra']['tmp_name']; //Lay danh sach duong dan tam
                for ($i=0;$i<count($arrextratmp[0]);$i++){ //Them nhieu hinh anh bang cach duyet mang img_extra
                    move_uploaded_file($arrextratmp[0][$i],"uploads/".$arrextra[0][$i]."");
                }
                header('Location:'.BASE_URL."/Admin/AddItem");
            }
            else{ //Them khong thanh cong
                $this->view("masteradmin",[
                    "admin_page"=>"additem",
                    "items"=>$list_item,
                    "child"=>$list_child
                ]);
                echo "<script type='text/javascript'>alert('Thêm không thành công');</script>";  
            }
        }
        else{ //Khi khong nhan nut tao
            $this->view("masteradmin",[
                "admin_page"=>"additem",
                "items"=>$list_item,
                "child"=>$list_child
            ]);
        }
        
    }

}
?>