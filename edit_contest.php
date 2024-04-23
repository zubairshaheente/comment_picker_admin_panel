<?php
    include 'classes/programming.php'; 

    if (isset($_GET['id'])){ 
    $id=$_GET['id'];
    $inpre_edit=$conn->query("SELECT * FROM contests WHERE id='$id'");
    $inpres_show=$inpre_edit->fetch_array();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <?php include 'include/title.php'; ?>
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="css/style.css">
  <?php include 'include/favicon.php'; ?>
</head>
<body>
  <div class="container-scroller">
    <?php include 'include/index.php'; ?>
    <div class="container-fluid page-body-wrapper">
      <?php include 'include/leftsidenav.php'; ?>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Contest</h4>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="<?php echo $id; ?>">
                    <div class="form-group">
                      <label for="title">Title</label>
                      <input type="text" class="form-control" id="title" name="title" value="<?php echo $inpres_show['title'] ?>" placeholder="Title">
                    </div>
                    <div class="form-group">
                      <label for="description">Description</label>
                      <textarea class="form-control" id="description" name="description" rows="4" placeholder="Description"><?php echo $inpres_show['description']  ?></textarea>
                    </div>
                    <div class="form-group">
                      <label for="image">Image</label>
                      <input type="file" class="form-control-file" id="image" name="image">
                      <input type="hidden" name="current_image" value="<?php echo $inpres_show['image_path'] ?>">
                      <img style="height: 200px; width: 200px;" src="<?php echo $inpres_show["image_path"]; ?>" alt="Contest Image" class="contest-image">
                    </div>
                    <button type="submit" class="btn btn-primary mr-2" name="submit">Update</button>
                    <a href="contest_view.php" class="btn btn-light">Cancel</a>
                  </form>
                  <?php } 
                    if (isset($_POST['id'])) {
                      $id = $_GET['id'];
                      $title = $_POST['title'];
                      $description = $_POST['description'];

                      if(isset($_FILES['image']['name']) && !empty($_FILES['image']['name'])) {
                          $image_name = $_FILES['image']['name'];
                          $tmp_name = $_FILES['image']['tmp_name'];
                          $upload_path = 'upload/';

                          if(move_uploaded_file($tmp_name, $upload_path.$image_name)) {
                              $image_path = $upload_path.$image_name;
                          } else {
                              // Handle upload failure
                              echo "Failed to upload image.";
                          }
                      } else {
                          // Keep the current image path if no new image is uploaded
                          $image_path = $_POST['current_image'];
                      }

                      $in_update = $conn->query("UPDATE contests SET title = '$title', description='$description', image_path='$image_path' WHERE id='$id'");
                      
                      if ($in_update) {
                        echo "<script>window.location='view_contest.php'</script>";
                      }else{
                        echo "<script>window.location='edit_contest.php'</script>";
                      }
                    }
                  ?>
                </div>
              </div>
            </div>
          </div>
        </div>

        <?php include './include/adminfooter.php'; ?>
      </div>
    </div>
  </div>
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <script src="js/off-canvas.js"></script>
  <script src="js/template.js"></script>
  <script src="js/dashboard.js"></script>
</body>
</html>
