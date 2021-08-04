<?php
class AccountModel extends DB{
    function RegisterAccount($username,$password,$fullname,$email){ //Xu Ly dang ki
        $query = "insert into account values ('$username','$password','$fullname','$email')";
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function LoginAccount($username){ //Xu ly dang Nhap
        $query = 'select * from account where username="'.$username.'" ';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }
}
?>