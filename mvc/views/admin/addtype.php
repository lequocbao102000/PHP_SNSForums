<div class="panel panel-primary">
    <div class="panel-heading">
		<h2 class="text-center">Thêm mới loại</h2>
	</div>

    <div>
        <form method="POST" action="">
             <div style="margin:auto;width:40%" class="panel panel-body">
                    <div class="form-group">
                        <label>Tên loại</label>
                        <input style="width:500px" required="true" type="text" class="form-control" id="cate"  name="name_parent">
                    </div>
                    
                    <div class="form-group">
                        <label>Loại MENU</label>
                        <select style="width:500px" class="form-select" name="id_menu">
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
                    <button type="submit" name="btncreateparent" class="btn btn-info">Save</button>
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
							<th width="20%">STT</th>
							<th width="40%">Loại</th>
                            <th width="40%">Thuộc Menu</th>							
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
                                </tr>';	
                        }
				?>
                    </tbody>
                </table>
                
            </div>
                    
            
</div>   