<?php 
	include 'classes/programming.php'; 
    $id=$_GET['id'];
    $inpre_edit=$conn->query("SELECT * FROM contests WHERE id='$id'");
    $inpres_show=$inpre_edit->fetch_array();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Contest View</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container-scroller">
    <?php include 'include/index.php'; ?>
    <div class="container-fluid page-body-wrapper">
      <?php include 'include/leftsidenav.php'; ?>
      <div class="container contest-container">
      	<div class="row">
          <div class="col-md-12">
	      	<h1>Title: <?php echo $inpres_show['title']; ?></h1>
	        <p>Description: <?php echo $inpres_show['description']; ?></p>
	        <img style="height: 300px; width: 400px;" src="<?php echo $inpres_show["image_path"]; ?>" alt="Contest Image" class="contest-image">
	      </div>
	    </div>
      </div>
    </div>
</div>
</body>
</html>