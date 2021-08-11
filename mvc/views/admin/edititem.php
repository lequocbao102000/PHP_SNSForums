<?php
    $name = $des = $con = $link = $trailer ='';
    if (isset($data['getitem'])){
        $row = $data['getitem'];
        $name = $row[0]['name'];
        $des = $row[0]['description'];
        $con = $row[0]['config'];
        $link = $row[0]['link'];
        $trailer = $row[0]['trailer'];
    }
?>
<div class="panel panel-primary">
    <div class="panel-heading">
		<h2 class="text-center">Thêm mới</h2>
	</div>

    <div>
        <form method="POST" action="" enctype="multipart/form-data">
             <div style="margin:auto;width:40%" class="panel panel-body">
                    <div class="form-group">
                        <label>Tiêu đề</label>
                        <input style="width:500px" required="true" type="text" class="form-control" value="<?php echo $name;?>"   name="name_item_edit">
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="des_item_edit" cols="67" rows="5" required="true">
                            <?php echo $des;?>
                        </textarea>
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Cấu hình đề nghị</label>
                        <textarea name="config_item_edit" cols="67" rows="5" required="true">
                        <?php echo $con;?>
                        </textarea>
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Link download</label>
                        <input style="width:500px" required="true" type="text" value="<?php echo $link;?>" class="form-control" name="linkdownload_edit">
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Link trailer</label>
                        <input style="width:500px" required="true" type="text" value="<?php echo $trailer;?>" class="form-control"  name="linktrailer_edit">
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Thể loại</label>
                        <select style="width:500px" class="form-select" name="theloai_edit">
                            <option selected>Chọn thể loại</option>
                            <?php
                            $type = [];
                            $type = $data["child"];
                            for ($i=0;$i<count($type);$i++){
                                echo '<option value="'.$type[$i]['id_child'].'">'.$type[$i]['name_child'].'</option>';	
                            }
                            ?>
                           
                        </select>
                        
                    </div>
                    </br>
                    <button type="submit" name="btnedititem" class="btn btn-info">Save</button>
            </div>
        </form>
    </div>
    </br>
    <div class="panel-heading">
				<h2 class="text-center">Danh sách items</h2>
			</div>
			
			<div class="panel-body">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th width="50px">STT</th>
							<th>Tiêu đề</th>
                            <th>Hình đại diện</th>
                            <th>Linkdownload</th>
                            
                            <th>Thể loại</th>
                            <th>Thêm mới ngày</th>
                            <th>Cập nhật ngày</th>
                            <th width="50px"></th>
                            <th width="50px"></th>
                            
							
						</tr>
					</thead>
					<tbody>
                        <?php
                        $row=[];
                        $row = $data["items"];
                        for ($i=0;$i<count($row);$i++){
                            echo '<tr>
                                    <td>'.($i+1).'</td>
                                    <td>'.$row[$i]['name'].'</td> 
                                    <td><img src="'.BASE_URL.'/uploads/'.$row[$i]['img_main'].'" style="width:100px;height:60px"/></td>
                                    
                                    <td>'.$row[$i]['link'].'</td>
                                    
                                    <td>'.$row[$i]['name_child'].'</td>
                                    <td>'.$row[$i]['created_at'].'</td>
                                    <td>'.$row[$i]['updated_at'].'</td>
                                    <td><a href="'.BASE_URL.'/Admin/EditItem?xoaitem='.$row[$i]['id'].'"/>Xóa</td>
                                    <td><a href="'.BASE_URL.'/Admin/EditItem?suaitem='.$row[$i]['id'].'"/>Sửa</td>
                                    <td><a href="'.BASE_URL.'/Admin/EditItem?hinhanhitem='.$row[$i]['id'].'"/>Sửa hình</td> 
                                   
                                </tr>';	
                        }
				?>
                    </tbody>
                </table>
                
            </div>
            
                    
            
</div>   