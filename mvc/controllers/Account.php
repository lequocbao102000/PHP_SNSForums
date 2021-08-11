<?php
class Account extends Controller{
    protected $accountmodel;
    
    function __construct(){
        $this->accountmodel = $this->model("AccountModel");
        if (isset($_SESSION['username'])){
            header('Location:'.BASE_URL."/Home");
        }
    }

    function Index(){
        //Nhan nut login
        if (isset($_POST['btn_login'])){
            $username = $_POST['login_username'];
            $password = $_POST['login_pass'];
            $result = $this->accountmodel->LoginAccount($username);
            if (count($result)>0){ //Neu tai khoan co trong danh sach
                if (password_verify($password,$result[0]['password'])){ //kiem tra password
                    $_SESSION['username'] = $result[0]['username'];
                    $_SESSION['fullname'] = $result[0]['fullname'];
                    $_SESSION['check'] = true;
                    if ($_SESSION['username']=="admin"){ //Kiem tra co phai admin k?
                        header('Location:'.BASE_URL."/Admin");
                    }
                    else{ //La nguoi dung bth
                        header('Location:'.BASE_URL."/Home");
                    }
                }
                else{ //Password khong dung
                    $_SESSION['check'] =false;
                    $this->view("account",[
                        "page"=>"login"
                    ]);
                }
            }
            else{ //Neu tai khoan khong co trong danh sach
                $_SESSION['check'] =false;
                    $this->view("account",[
                        "page"=>"login"
                    ]);
            }
            
            
        }
        //kh nhan nut login
        else{
            $this->view("account",[
                "page"=>"login"
            ]);
        }
        
    }

    function Register(){
        //Khi nhan nut dang ki
        if (isset($_POST['btn_register'])){
            $username = $_POST['register_username'];
            $password = $_POST['register_pass'];
            $confirmpassword = $_POST['register_cpass'];
            $fullname = $_POST['register_fullname'];
            $email = $_POST['register_email'];
            if ($password == $confirmpassword){ //Neu 2 mat khau giong nhau
                $password = password_hash($password,PASSWORD_DEFAULT);
                if ($this->accountmodel->RegisterAccount($username,$password,$fullname,$email)){ //Neu tao tk thanh cong
                    $this->view("account",[
                        "page"=>"register"
                    ]);
                    echo "<script type='text/javascript'>alert('Register Success');</script>";    
                }
                else{ //Tao tai khoan that bai
                    $this->view("account",[
                        "page"=>"register"
                    ]);
                    echo "<script type='text/javascript'>alert('Register Failed');</script>";  
                }
            }
            else{ //Neu 2 mat khau khong giong nhau
                $this->view("account",[
                    "page"=>"register"
                ]);
                echo "<script type='text/javascript'>alert('Register Failed');</script>";  
            }

        }
        
        //Khong nhan nut dang ki
        else{
            $this->view("account",[
                "page"=>"register"
            ]);
        }
    }

    function Logout(){
        unset ($_SESSION['username']);
        unset ($_SESSION['check']);
        unset ($_SESSION['fullname']);

        header('Location:'.BASE_URL);
    }
}
?>