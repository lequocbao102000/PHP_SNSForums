<?php
class ForumsModel extends DB{
    function GetAll(){ //Lay tat ca item
        $query = 'select * from item';
            $rows= mysqli_query($this->connect, $query);
             $data = [];
             while ($row = mysqli_fetch_array($rows)){
                 $data[]=$row;
             }
             return $data;
    }

    function GetItem($id){ //Lay item theo danh muc
        $query = 'select item.*,categorychild.name_child from item inner join categorychild on item.id_child=categorychild.id_child where item.id_child='.$id.'';
            $rows= mysqli_query($this->connect, $query);
             $data = [];
             while ($row = mysqli_fetch_array($rows)){
                 $data[]=$row;
             }
             return $data;
    }

    function GetSearch($name){ //Tim kiem
        $query = 'select * FROM item WHERE name like "%'.$name.'%"';
            $rows= mysqli_query($this->connect, $query);
             $data = [];
             while ($row = mysqli_fetch_array($rows)){
                 $data[]=$row;
             }
             return $data;
    }

    function GetItemDetail($id){ //Lay item theo id
        $query = 'select item.*,categorychild.name_child from item inner join categorychild on item.id_child=categorychild.id_child where item.id='.$id.'';
            $rows= mysqli_query($this->connect, $query);
             $data = [];
             while ($row = mysqli_fetch_array($rows)){
                 $data[]=$row;
             }
             return $data;
    }

    function LikeItem($id,$name){ //Yeu thich item
        $query = "insert into listlike (id_item,username) values ('$id','$name')";
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }
}
?>