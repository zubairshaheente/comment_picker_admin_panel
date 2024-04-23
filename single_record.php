<?php
// Include the database connection file
include 'classes/programming.php';

// Check if contest ID is provided in the URL
if(isset($_GET['id'])) {
    // Sanitize the input to prevent SQL injection
    $contest_id = $_GET['id'];
    
    // Query to retrieve contest details based on the provided ID
    $sql = "SELECT * FROM contests WHERE id = $contest_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Fetch contest data
        $contest = $result->fetch_assoc();
        // Fetch image URL
        $image_url = $contest['image_url'];
    } else {
        // If no record found, redirect to contest view page with a message
        header("Location: contest_view.php?error_msg=Contest not found");
        exit();
    }
} else {
    // If no ID provided, redirect to contest view page with a message
    header("Location: contest_view.php?error_msg=Contest ID not provided");
    exit();
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>View Contest</title>
  <!-- Include CSS links here -->
</head>
<body>
  <div class="container">
    <h1>Contest Details</h1>
    <div>
      <p><strong>Title:</strong> <?php echo $contest['title']; ?></p>
      <p><strong>Description:</strong> <?php echo $contest['description']; ?></p>
      <!-- Display image -->
      <img src="<?php echo $image_url; ?>" alt="Contest Image">
    </div>
    <a href="view_contest.php" class="btn btn-primary">Back to Contest View</a>
  </div>
</body>
</html>
