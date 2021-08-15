<?php
class UserModel extends DB{
    function GetLikeUser($username){// Lay danh sach item da like cua user
        $query = 'select item.id,item.name,item.img_main from item inner join listlike on item.id=listlike.id_item where listlike.username="'.$username.'"';
            $rows= mysqli_query($this->connect, $query);
             $data = [];
             while ($row = mysqli_fetch_array($rows)){
                 $data[]=$row;
             }
             return $data;
    } 

    function RemoveListLike($id,$username){// xoa item khoi danh sach yeu thich
        $query = 'delete from listlike where id_item='.$id.' and username="'.$username.'"';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    } 
}
?>