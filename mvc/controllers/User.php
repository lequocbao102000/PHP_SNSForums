<?php
class User extends Controller{
    protected $homemodel;
    protected $usermodel;
    function __construct(){
        $this->homemodel = $this->model("HomeModel");
        $this->usermodel = $this->model("UserModel");
        if (!isset($_SESSION['username'])){
            header('Location:'.BASE_URL);
        }
    }

    function Index(){
        $list_parent = $this->homemodel->GetMenuParent();
        $list_software = $this->homemodel->GetMenuChild2();
        if (isset($_GET['removelike'])){ //Neu xoa item ra khoi danh sach
            if ($this->usermodel->RemoveListLike($_GET['removelike'],$_SESSION['username'])){//Xoa thanh cong
                $_SESSION['checkremove']=true;
                header('Location:'.BASE_URL."/User");
            }
            else{//Xoa that bai
                $_SESSION['checkremove']=false;
                header('Location:'.BASE_URL."/User");
            }
        }
        else{ // Mac dinh
            $likeuserlike = $this->usermodel->GetLikeUser($_SESSION['username']);
            $this->view("user",[
                "home_parent" => $list_parent,
                "software"=>$list_software,
                "listlike"=>$likeuserlike
            ]);

        }
        
    }
}
?>