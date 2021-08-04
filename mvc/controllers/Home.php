<?php
class Home extends Controller{
    function __construct(){
        if (!isset($_SESSION['username'])){
            header('Location:'.BASE_URL);
        }
    }
    
    function Index(){
        $this->view("main",[]);
    }
}
?>