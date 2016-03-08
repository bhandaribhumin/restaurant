<!DOCTYPE html>
<html>
	<head>
		<title>Saffron .</title>
		<?php echo $dependencies; ?>
		<link rel="stylesheet" href="<?php echo base_url() . 'assets/css/validationEngine.jquery.css'; ?>" type="text/css"/>
		<script src="<?php echo base_url() . 'assets/js/jquery.validationEngine-en.js'; ?>" type="text/javascript" charset="utf-8"></script>
		<script src="<?php echo base_url() . 'assets/js/jquery.validationEngine.js'; ?>" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#menuitemform').validationEngine();
			});	

		</script>
	</head>
	<body>
		<?php echo $header; ?>
		<div class="container-fluid" style="margin-top:120px;">
			<div class="row-fluid">
				<div class="span12 outer-frame rounded-6px">
					<div class="whitebg">
						<div class="boxheading toprounded-4px" style="">
							Edit Ingredients
						</div>
						<div class="singlecontent padding-10px">
							<form id="itemform" class="form-horizontal" enctype="multipart/form-data" method="post" action="<?php echo site_url('manager/menutype/add'); ?>">
								<div style="margin-bottom:25px;overflow:auto;">
									<table class="form pull-left" style="width:50%;margin-right:20px;">
										<tbody>
											<tr>
												<td class="formlabel label20">Name</td>
												<td><input class="validate[required]" type="text" name="name" value="<?php echo $ingredients->name;?>" /></td>
											</tr>
										</tbody>
									</table>
									
								</div>
								<!-- <br class="clear" /> -->
								<div class="form-actions">
									<a href="#" onclick="$('#itemform').submit()" class="btn btn-large">Edit Ingredient</a>
									&nbsp;&nbsp;
									<a href="<?php echo site_url('manager/menutype'); ?>" class="btn btn-large transition">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>