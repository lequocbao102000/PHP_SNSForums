<?php
class Home extends Controller{
    protected $homemodel;
    function __construct(){
        $this->homemodel = $this->model("HomeModel");
        if (!isset($_SESSION['username'])){
            header('Location:'.BASE_URL);
        }
    }
    
    function Index(){
        $list_parent = $this->homemodel->GetMenuParent();
        $list_software = $this->homemodel->GetMenuChild2();
        $this->view("main",[
            "home_parent" => $list_parent,
            "software"=>$list_software
        ]);
    }
}
?>