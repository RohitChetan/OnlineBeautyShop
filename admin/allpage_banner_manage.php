<?php
require('top.inc.php');
isAdmin();
$page_name='';
$pagelink='';
$bannerTitle='';
$page_image='';
$msg='';
$image_required='required';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$image_required='';
	$res=mysqli_query($con,"select * from allpage_banner where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
		$page_name=$row['page_name'];
		$pagelink=$row['pagelink'];
		$bannerTitle=$row['bannerTitle'];
		$page_image=$row['page_image'];
	}else{
		header('location:banner.php');
		die();
	}
}

if(isset($_POST['submit'])){

	// print_r($_POST);
	// die();

	// echo ALLPAGE_BANNER_SERVER_PATH;
	// die();
	
	$page_name=get_safe_value($con,$_POST['page_name']);
	$pagelink=get_safe_value($con,$_POST['pagelink']);
	$bannerTitle=get_safe_value($con,$_POST['bannerTitle']);
	
	if(isset($_GET['id']) && $_GET['id']==0){
		if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
			$msg="Please select only png,jpg and jpeg image formate";
		}
	}else{
		if($_FILES['image']['type']!=''){
				if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
				$msg="Please select only png,jpg and jpeg image formate";
			}
		}
	}
	
	$msg="";
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			if($_FILES['image']['name']!=''){
				$page_image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
				move_uploaded_file($_FILES['image']['tmp_name'],ALLPAGE_BANNER_SERVER_PATH.$page_image);
				//imageCompress($_FILES['image']['tmp_name'],ALLPAGE_BANNER_SERVER_PATH.$page_image);
				mysqli_query($con,"update allpage_banner set page_name='$page_name',pagelink='$pagelink',bannerTitle='$bannerTitle',page_image='$page_image' where id='$id'");
			}else{
				mysqli_query($con,"update allpage_banner set page_name='$page_name',pagelink='$pagelink',bannerTitle='$bannerTitle' where id='$id'");
			}
		}else{
			$page_image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
			move_uploaded_file($_FILES['image']['tmp_name'],ALLPAGE_BANNER_SERVER_PATH.$page_image);
			//imageCompress($_FILES['image']['tmp_name'],ALLPAGE_BANNER_SERVER_PATH.$page_image);
			mysqli_query($con,"insert into allpage_banner(page_name,pagelink,bannerTitle,page_image,status) values('$page_name','$pagelink','$bannerTitle','$page_image','1')");
		}
		header('location:banner.php');
		die();
	}
}
?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Banner</strong><small> Form</small></div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">
							   <div class="form-group">
									<label for="heading1" class=" form-control-label">Page Name</label>
									<input type="text" name="page_name" placeholder="Enter heading1" class="form-control" required value="<?php echo $page_name?>">
								</div>
								<div class="form-group">
									<label for="heading1" class=" form-control-label">Page Links</label>
									<input type="text" name="pagelink" placeholder="Enter heading2" class="form-control" required value="<?php echo $pagelink?>">
								</div>
								<div class="form-group">
									<label for="heading1" class=" form-control-label">Banner Title</label>
									<input type="text" name="bannerTitle" placeholder="Enter btn txt" class="form-control" value="<?php echo $bannerTitle?>">
								</div>
								<div class="form-group">
									<label for="heading1" class=" form-control-label">Image</label>
									<input type="file" name="image" placeholder="Enter image" class="form-control" <?php echo  $image_required?> value="<?php echo $page_image?>">
									<?php
										if($page_image!=''){
echo "<a target='_blank' href='".ALLPAGE_BANNER_SITE_PATH.$page_image."'><img width='150px' src='".ALLPAGE_BANNER_SITE_PATH.$page_image."'/></a>";
										}
										?>
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