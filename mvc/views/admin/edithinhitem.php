<?php
    $name = '';
    if (isset($data['getitem'])){
        $row = $data['getitem'];
        $name = $row[0]['name'];
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
                        <input style="width:500px" required="true" readonly="true" type="text" class="form-control" value="<?php echo $name;?>">
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Hình ảnh chính</label>
                        <input style="width:500px" required="true" type="file" class="form-control"   name="img_main_edit">
                    </div>
                    </br>
                    <div class="form-group">
                        <label>Hình ảnh phụ (4 hình)</label>
                        <input style="width:500px" required="true" type="file" class="form-control"   name="img_extra_edit[]" multiple>
                    </div>
                    </br>
                    <button type="submit" name="btnedithinhitem" class="btn btn-info">Save</button>
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