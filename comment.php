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
    /* Adjust padding for title and description columns */
    .contest-table th:first-child,
    .contest-table td:first-child {
      padding-left: 5px; /* Adjust as needed */
      padding-right: 5px; /* Adjust as needed */
    }
    .contest-table th:nth-child(2),
    .contest-table td:nth-child(2) {
      padding-left: 5px; /* Adjust as needed */
      padding-right: 5px; /* Adjust as needed */
    }
  </style>
</head>
<body>
<div class="container-scroller">
  <div class="text-center"> <!-- Center all content -->
    <?php include 'include/index.php'; ?>
    <div class="container-fluid page-body-wrapper">
      <?php include 'include/leftsidenav.php'; ?>
      <div class="container contest-container">
        <h1 class="mb-4">Comment View</h1> <!-- Remove text-center class -->
        <?php
          if (isset($_GET['del_msg'])): ?>
            <h3 class="text-success"> <?php echo $_GET['del_msg'] ?></h3>
          <?php endif    ?>
        <div class="row justify-content-center"> <!-- Center the button -->
          <div class="col-md-12 text-right">
            <a class="text-light btn btn-primary mr-4" style="text-decoration: none;" href="create_contest.php">Add New</a>
          </div>
        </div>
        
        <div class="row justify-content-center"> <!-- Center the table -->
          <div class="col-md-12">
            <table class="table contest-table">
                <tr>
                  <th>Comment ID</th>
                  <th>Giveaway ID</th>
                  <th>User Name</th>
                  <th>Comment Text</th>
                  <th>User ID</th>
                </tr>
              <tbody>
                <?php
                // Pagination variables
                $limit = 10;
                $page = isset($_GET['page']) ? $_GET['page'] : 1;
                $start = ($page - 1) * $limit;

                // Sorting variables
                $sort = isset($_GET['sort']) ? $_GET['sort'] : 'comment_id';
                $order = isset($_GET['order']) ? $_GET['order'] : 'ASC';

                // Fetch comment data from the database with pagination and sorting
                $sql = "SELECT * FROM comment_picker_comments ORDER BY $sort $order LIMIT $start, $limit";
                $result = $conn->query($sql);

                // Display comment data
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        // Display comment information
                        echo '<tr>
                                <td>' . $row["comment_id"] . '</td>
                                <td>' . $row["comment_picker_giveaway_id"] . '</td>
                                <td>' . $row["user_name"] . '</td>
                                <td>' . $row["comment_text"] . '</td>
                                <td>' . $row["user_id"] . '</td>
                              </tr>';
                    }
                } else {
                    echo '<tr>
                            <td colspan="5" class="text-center">No comments available.</td>
                          </tr>';
                }

                // Count total number of records for pagination
                $sql_count = "SELECT COUNT(*) AS total FROM comment_picker_comments";
                $result_count = $conn->query($sql_count);
                $row_count = $result_count->fetch_assoc();
                $total_pages = ceil($row_count["total"] / $limit);

                $conn->close();
                ?>
              </tbody>
            </table>
          </div>
        </div>

        <!-- Pagination Links -->
        <div class="row justify-content-center"> <!-- Center pagination links -->
          <div class="col-md-12">
            <ul class="pagination justify-content-center mt-3">
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
</div>

</body>
</html>
