<?php 
include 'classes/programming.php'; 

// Check if form is submitted
if (isset($_POST["submit"])) {

    // Prepare and bind the SQL statement
    $sql = "INSERT INTO comment_picker_comments (title, description, image_path) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $title, $description, $image_path);

    // Set parameters
    $title = $_POST["title"];
    $description = $_POST["description"];
    $image_path = "upload/" . $_FILES["image"]["name"];

    // Check for file upload errors
    if ($_FILES["image"]["error"] > 0) {
        echo "Error: " . $_FILES["image"]["error"];
    } else {
        // Move uploaded file to destination folder
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $image_path)) {
            // Execute the statement
            if ($stmt->execute()) {
                echo "Contest created successfully";
            } else {
                echo "Error: " . $stmt->error;
            }
        } else {
            echo "Error: File upload failed.";
        }
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
}
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
                  <h4 class="card-title">Create New Contest</h4>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="title">Title</label>
                      <input type="text" class="form-control" id="title" name="title" placeholder="Title">
                    </div>
                    <div class="form-group">
                      <label for="description">Description</label>
                      <textarea class="form-control" id="description" name="description" rows="4" placeholder="Description"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="image">Image</label>
                      <input type="file" class="form-control-file" id="image" name="image">
                    </div>
                    <button type="submit" class="btn btn-primary mr-2" name="submit">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
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
