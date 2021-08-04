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
}
?>