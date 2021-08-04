<?php
    if (isset($_GET['suaparent'])){
        $parent = $data['getparent'];
        $name = $parent[0]['name_parent'];  
    }
    else{
        $name = '';
    }
?>
<div class="panel panel-primary">
    <div class="panel-heading">
		<h2 class="text-center">Chỉnh sửa loại</h2>
	</div>

    <div>
        <form method="POST" action="">
             <div style="margin:auto;width:40%" class="panel panel-body">
                    <div class="form-group">
                        <label>Tên loại</label>
                        <input style="width:500px" required="true" type="text"  class="form-control" id="cate" value="<?=$name?>"  name="name_parent_edit">
                    </div>
                    
                    <div class="form-group">
                        <label>Loại MENU</label>
                        <select style="width:500px" class="form-select" name="id_menu_edit">
                            <option selected>Chọn menu</option>
                            <?php
                            $type = [];
                            $type = $data["menu"];
                            for ($i=0;$i<count($type);$i++){
                                echo '<option value="'.$type[$i]['id_menu'].'">'.$type[$i]['name_menu'].'</option>';	
                            }
                            ?>
                           
                        </select>
                        
                    </div>
                    </br>
                    <button type="submit" name="btneditparent" class="btn btn-info">Save</button>
            </div>
        </form>
    </div></br>
    
            <div class="panel-heading">
				<h2 class="text-center">Category Management</h2>
			</div>
			
			<div class="panel-body">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">STT</th>
							<th width="35%">Loại</th>
                            <th width="35%">Thuộc Menu</th>
                            <th width="10%"></th>
                            <th width="10%"></th>						
						</tr>
					</thead>
					<tbody>
                    <?php
                        $row=[];
                        $row = $data["parent"];
                        for ($i=0;$i<count($row);$i++){
                            echo '<tr>
                                    <td>'.($i+1).'</td>
                                    <td>'.$row[$i]['name_parent'].'</td> 
                                    <td>'.$row[$i]['name_menu'].'</td>
                                    <td><a href="'.BASE_URL.'/Admin/EditCategoryParent?xoaparent='.$row[$i]['id_parent'].'"/>Xóa</td>
                                    <td><a href="'.BASE_URL.'/Admin/EditCategoryParent?suaparent='.$row[$i]['id_parent'].'"/>Sửa</td>                                 
                                </tr>';	
                        }
				?>
                    </tbody>
                </table>
                
            </div>
                    
            
</div>   