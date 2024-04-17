<?php
require('top.inc.php');
isAdmin();
$ctype='';
$uname='';
$cpassword='';
$msg='';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from credentials_tbls where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
		$ctype=$row['Ctype'];
		$uname=$row['email'];
		$cpassword=$row['password'];
	}else{
		header('location:credentials.php');
		die();
	}
}

if(isset($_POST['submit'])){

	// print_r($_POST);
	// die();
	$ctype=get_safe_value($con,$_POST['ctype']);
	$uname=get_safe_value($con,$_POST['cuname']);
	$cpassword=get_safe_value($con,$_POST['cpassword']);
	
	$msg="";
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			mysqli_query($con,"update credentials_tbls set Ctype='$ctype',email='$uname',password='$cpassword' where id='$id'");
			
		}else{
			mysqli_query($con,"insert into credentials_tbls(Ctype,email,password,status) values('$ctype','$uname','$cpassword','1')");
		}	
		redirect('credentials.php');
	}
}
?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Credentials</strong><small> Form</small></div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">
							   <div class="form-group">
							   		<select class="form-control" name="ctype" id="categories_id" required>
										<?php  
											if($ctype != ''){
												echo "<option selected value='$ctype'>$ctype</option>";
											}
										?>
										<option>Select Category</option>
										<option value="email"> Email </option>
										<option value="instamojo"> INSTAMOJO </option>
										<option value="shiprocket"> Shiprocket </option>
									</select>
								</div>
								<div class="form-group">
									<label for="heading1" class=" form-control-label">Email Or Username</label>
									<input type="text" name="cuname" placeholder="Enter heading2" class="form-control" required value="<?php echo $uname?>">
								</div>
								<div class="form-group">
									<label for="heading1" class=" form-control-label">Password</label>
									<input type="text" name="cpassword" placeholder="Enter btn txt" class="form-control" value="<?php echo $cpassword?>">
								</div>
								
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Submit</span>
							   </button>
							   <div class="field_error"><?php echo $msg?></div>
							</div>
						</form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
<?php
require('footer.inc.php');
?>