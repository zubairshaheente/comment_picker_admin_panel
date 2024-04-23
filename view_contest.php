<?php include 'classes/programming.php'; ?>

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
  <style>
    /* Custom Styles */
    .contest-container {
      margin-top: 50px;
    }
    .contest-table {
      margin-top: 20px;
    }
    .contest-image {
      max-width: 50px;
      height: auto;
      border-radius: 10px;
    }
    .btn-group-action {
      white-space: nowrap;
    }
    .btn-action {
      margin-right: 5px;
    }
  </style>
</head>
<body>
<div class="container-scroller">
    <?php include 'include/index.php'; ?>
    <div class="container-fluid page-body-wrapper">
      <?php include 'include/leftsidenav.php'; ?>
      <div class="container contest-container">
        <h1 class="text-center mb-4">Contest View</h1>
        <div class="row">
          <div class="col-md-12 text-right">
            <a class="text-light btn btn-primary" style="text-decoration: none;" href="create_contest.php">Add New</a>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <table class="table contest-table">
                <tr>
                  <th>#</th>
                  <th>Title</th>
                  <th>Description</th>
                  <th>Image</th>
                  <th>Actions</th>
                </tr>
              <tbody>
                <?php
                // Pagination variables
                $limit = 10;
                $page = isset($_GET['page']) ? $_GET['page'] : 1;
                $start = ($page - 1) * $limit;

                // Sorting variables
                $sort = isset($_GET['sort']) ? $_GET['sort'] : 'title';
                $order = isset($_GET['order']) ? $_GET['order'] : 'ASC';

                // Fetch contest data from the database with pagination and sorting
                $sql = "SELECT * FROM contests ORDER BY id DESC LIMIT $start, $limit";
                $result = $conn->query($sql);

                $i =1;

                // Display contest data
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        // Display contest information
                        echo '<tr>
                        <td>' . $i++ . '</td>
                        <td>' . $row["title"] . '</td>
                        <td>' . substr($row["description"], 0, 200) . '</td>
                        <td><img src="' . $row["image_path"] . '" alt="Contest Image" class="contest-image"></td>
                        <td class="btn-group-action">
                          <a href="edit_contest.php?id=' . $row["id"] . '" class="btn btn-primary btn-sm btn-action"><i class="fas fa-edit"></i></a>
                          <a href="detail_view.php?id=' . $row["id"] . '" class="btn btn-info btn-sm btn-action"><i class="fas fa-eye"></i></a>
                          <a href="delete_contest.php?id=' . $row["id"] . '" class="btn btn-danger btn-sm btn-action" onclick="return confirm(\'Are you sure you want to delete this contest?\')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                      </tr>';
                    }
                } else {
                    echo '<tr>
                            <td colspan="4" class="text-center">No contests available.</td>
                          </tr>';
                }

                // Count total number of records for pagination
                $sql = "SELECT COUNT(*) AS total FROM contests";
                $result_count = $conn->query($sql);
                $row_count = $result_count->fetch_assoc();
                $total_pages = ceil($row_count["total"] / $limit);

                $conn->close();
                ?>
              </tbody>
            </table>
          </div>
        </div>

        <!-- Pagination Links -->
        <div class="row">
          <div class="col-md-12">
            <ul class="pagination justify-content-center">
              <?php
              // Previous page link
              if ($page > 1) {
                  echo '<li class="page-item"><a class="page-link" href="?page='.($page - 1).'&sort='.$sort.'&order='.$order.'"><i class="fas fa-chevron-left"></i> Previous</a></li>';
              }

              // Page numbers
              for ($i = 1; $i <= $total_pages; $i++) {
                  echo '<li class="page-item '.($page == $i ? 'active' : '').'"><a class="page-link" href="?page='.$i.'&sort='.$sort.'&order='.$order.'">'.$i.'</a></li>';
              }

              // Next page link
              if ($page < $total_pages) {
                  echo '<li class="page-item"><a class="page-link" href="?page='.($page + 1).'&sort='.$sort.'&order='.$order.'">Next <i class="fas fa-chevron-right"></i></a></li>';
              }
              ?>
            </ul>
          </div>
        </div>
      </div>
    </div>
</div>

</body>
</html>
