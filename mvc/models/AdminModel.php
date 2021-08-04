<?php
class AdminModel extends DB{

    function GetMenu(){//Lay danh sach menu
        $query = 'select * from menu';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetMenuParent(){ //Lay danh sach danh muc cha
        $query = 'select categoryparent.*,menu.name_menu from categoryparent inner join menu on categoryparent.id_menu = menu.id_menu';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetMenuChild(){ //Lay danh sach danh muc con
        $query = 'select categorychild.*,categoryparent.name_parent from categorychild inner join categoryparent on categorychild.id_parent = categoryparent.id_parent';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetParentWhereID($id){ //Lay danh muc cha theo id
        $query = 'select * from categoryparent where id_parent='.$id.'';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function InsertParent($name,$id_menu){ //Them moi danh muc cha
        $query = "insert into categoryparent (name_parent,id_menu) values ('$name','$id_menu')";
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function EditParent($id,$name,$id_menu){ //chinh sua danh muc cha
        $query = 'update categoryparent set name_parent="'.$name.'",id_menu='.$id_menu.' where id_parent='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function DeleteParent($id){ //chinh sua danh muc cha
        $query = 'delete from categoryparent where id_parent='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }
}
?>