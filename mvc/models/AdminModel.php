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

    function InsertChild($name,$id_parent){ //Them moi danh muc con
        $query = "insert into categorychild (name_child,id_parent) values ('$name','$id_parent')";
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function EditChild($id,$name,$id_parent){ //chinh sua danh muc con
        $query = 'update categorychild set name_child="'.$name.'",id_parent='.$id_parent.' where id_child='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function DeleteChild($id){ //xoa sua danh muc con
        $query = 'delete from categorychild where id_child='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function GetChildWhereID($id){ //Lay danh muc con theo id
        $query = 'select * from categorychild where id_child='.$id.'';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function GetItem(){ //Lay danh sach item
        $query = 'select item.* ,categorychild.name_child FROM item INNER JOIN categorychild on item.id_child=categorychild.id_child';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }

    function InsertItem($name,$description,$img_main,$img_extra,$configitem,$link,$trailer,$id_child){ //Them moi item
        $created_at = $updated_at = date('Y-m-d H:s:i');
        $query = "insert into item (name,description,img_main,img_extra,config,link,trailer,id_child,created_at,updated_at)
         values ('$name','$description','$img_main','$img_extra','$configitem','$link','$trailer',$id_child,'$created_at','$updated_at')";
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function EditItem($id,$name,$description,$configitem,$link,$trailer,$id_child){ //chinh sua noi dung item
        $query = 'update item set name="'.$name.'",description="'.$description.'",config="'.$configitem.'",
        link="'.$link.'",id_child='.$id_child.' where id='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function EditHinhItem($id,$img_main,$img_extra){ //chinh sua noi dung hinh item
        $query = 'update item set img_main="'.$img_main.'",img_extra="'.$img_extra.'" where id='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function DeleteItem($id){ //Xoa item
        $query = 'delete from item where id='.$id.'';
        $result = false;
        if (mysqli_query($this->connect, $query)){
            $result =true;
        }
        return $result;
    }

    function GetItemWhereID($id){ //Lay item theo id
        $query = 'select * from item where id='.$id.'';
        $rows= mysqli_query($this->connect, $query);
         $data = [];
         while ($row = mysqli_fetch_array($rows)){
             $data[]=$row;
         }
         return $data;
    }
}
?>