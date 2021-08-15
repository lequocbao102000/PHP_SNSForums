<?php
class Forums extends Controller{
    protected $homemodel;
    protected $forummodel;
    function __construct(){
        $this->homemodel = $this->model("HomeModel");
        $this->forummodel = $this->model("ForumsModel");
        if (!isset($_SESSION['username'])){
            header('Location:'.BASE_URL);
        }
    }
    function Index(){
        $list_parent = $this->homemodel->GetMenuParent();
        $list_software = $this->homemodel->GetMenuChild2();
        if (isset($_GET['theloai'])){ //neu ton tai get
            if (is_numeric($_GET['theloai'])&&$_GET['theloai']>0){//kiem tra get co phai la so va >0 hay k?
                $list_item = $this->forummodel->GetItem($_GET['theloai']);
                $this->view("itemlayout",[
                    "home_parent" => $list_parent,
                    "software"=>$list_software,
                    "item"=>$list_item
                ]);
            }
            else{
                $list_all = $this->forummodel->GetAll();
                $this->view("itemlayout",[
                    "home_parent" => $list_parent,
                    "software"=>$list_software,
                    "item"=>$list_all
            ]);
            }
            
        }

        else if (isset($_POST['btnsearch'])){
            $list_search = $this->forummodel->GetSearch($_POST['search']);
            $this->view("itemlayout",[
                "home_parent" => $list_parent,
                "software"=>$list_software,
                "item"=>$list_search
            ]);
        }
        else{ //Kh ton tai get
            $list_all = $this->forummodel->GetAll();
            $this->view("itemlayout",[
                "home_parent" => $list_parent,
                "software"=>$list_software,
                "item"=>$list_all
            ]);
        }
        
    }

    function Item(){
        $list_parent = $this->homemodel->GetMenuParent();
        $list_software = $this->homemodel->GetMenuChild2();
        if (isset($_GET['item'])){
            if (is_numeric($_GET['item'])&&$_GET['item']>0){
                $item_detail = $this->forummodel->GetItemDetail($_GET['item']);
                $this->view("itemdetail",[
                    "home_parent" => $list_parent,
                    "software"=>$list_software,
                    "detail" => $item_detail
        
                ]);
            }
            else{
                header ('Location:'.BASE_URL);
            }
        }
        else{
            header ('Location:'.BASE_URL);
        }
       
    }

    function Like(){
        if (isset($_GET['like'])){
            if ($this->forummodel->LikeItem($_GET['like'],$_SESSION['username'])){
                $_SESSION['checklike']=true;
            }
            else{
                $_SESSION['checklike']=false;
            }
            header('Location:'.BASE_URL.'/Forums/Item?item='.$_GET['like']);
        }
        else{
            header('Location:'.BASE_URL);
        }
    }
}
?>