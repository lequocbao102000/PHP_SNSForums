<div class="panel panel-primary">
    <div class="panel-heading">
		<h2 class="text-center">Thêm mới thể loại</h2>
	</div>

    <div>
        <form method="POST" action="">
             <div style="margin:auto;width:40%" class="panel panel-body">
                    <div class="form-group">
                        <label>Tên thể loại</label>
                        <input style="width:500px" required="true" type="text" class="form-control" id="cate"  name="name_child">
                    </div>
                    
                    <div class="form-group">
                        <label>Loại</label>
                        <select style="width:500px" class="form-select" name="id_parent">
                            <option selected>Chọn menu</option>
                            <?php
                            $type = [];
                            $type = $data["parent"];
                            for ($i=0;$i<count($type);$i++){
                                echo '<option value="'.$type[$i]['id_parent'].'">'.$type[$i]['name_parent'].'</option>';	
                            }
                            ?>
                           
                        </select>
                        
                    </div>
                    </br>
                    <button type="submit" name="btncreatechild" class="btn btn-info">Save</button>
            </div>
        </form>
    </div></br>
    
            <div class="panel-heading">
				<h2 class="text-center">Danh sách thể loại</h2>
			</div>
			
			<div class="panel-body">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th width="20%">STT</th>
							<th width="40%">Thể loại</th>
                            <th width="40%">Thuộc loại</th>							
						</tr>
					</thead>
					<tbody>
                    <?php
                        $row=[];
                        $row = $data["child"];
                        for ($i=0;$i<count($row);$i++){
                            echo '<tr>
                                    <td>'.($i+1).'</td>
                                    <td>'.$row[$i]['name_child'].'</td> 
                                    <td>'.$row[$i]['name_parent'].'</td>                                  
                                </tr>';	
                        }
				?>
                    </tbody>
                </table>
                
            </div>
                    
            
</div>   