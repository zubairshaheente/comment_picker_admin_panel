<?php include 'classes/programming.php'; ?>

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
                  <h4 class="card-title">Winer Contest</h4>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
<?php
$sql = "SELECT comment_picker_giveaway_id, MAX(user_name) AS highest_user_name
        FROM comment_picker_comments
        GROUP BY comment_picker_giveaway_id
        ORDER BY comment_picker_giveaway_id DESC
        LIMIT 1;";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table>";
    echo "<tr><th>Giveaway ID</th><th>Highest User Name</th></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row['comment_picker_giveaway_id'] . "</td>";
        echo "<td>" . $row['highest_user_name'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No results found.";
}
?>



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
