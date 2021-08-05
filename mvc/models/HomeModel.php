<?php
class HomeModel extends DB{
    function GetMenuParent(){ //Lay danh sach danh muc cha
        $query = 'select * from categoryparent except SELECT *FROM categoryparent WHERE id_parent=8;';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetMenuChild($id){ //Lay danh sach danh muc con
        $query = 'select * from categorychild  WHERE id_parent='.$id.'';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetMenuChild2(){ //Lay danh sach danh muc con phan mem
        $query = 'select * from categorychild  WHERE id_parent=8;';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }
}
?>