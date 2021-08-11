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
        $list_top10 = $this->homemodel->GetTop10();
        $list_new = $this->homemodel->GetNew();
        $this->view("main",[
            "home_parent" => $list_parent,
            "software"=>$list_software,
            "top10"=>$list_top10,
            "new"=>$list_new
        ]);
    }
}
?>