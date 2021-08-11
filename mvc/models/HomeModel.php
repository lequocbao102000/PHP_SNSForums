<?php
class HomeModel extends DB{
    function GetMenuParent(){ //Lay danh sach danh muc cha
        $query = 'select * from categoryparent except SELECT *FROM categoryparent WHERE id_menu=2';
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
        $query = 'select categorychild.* FROM categorychild INNER JOIN categoryparent 
        WHERE categorychild.id_parent=categoryparent.id_parent and categoryparent.id_menu=2';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetTop10(){ //Lay top 10 item duoc yeu thich nhat
        $query = 'select item.*,COUNT(listlike.id_item) as luotlike from item INNER JOIN listlike on item.id=listlike.id_item GROUP BY (listlike.id_item) asc limit 10';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetNew(){ //Lay top moi nhat
        $query = 'select * FROM item GROUP by id desc limit 10';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }
}
?>