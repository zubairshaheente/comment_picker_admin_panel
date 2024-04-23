<?php
// Include database connection
include 'classes/programming.php';

// Check if contest id is provided
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    
    // Delete contest from the database based on contest id
    $sql = "DELETE FROM contests WHERE id = $id";
    if ($conn->query($sql) === TRUE) {
        echo "Contest deleted successfully.";
    } else {
        echo "Error deleting contest: " . $conn->error;
    }
} else {
    // Contest id not provided
    echo "Contest id not provided.";
}

$conn->close();
?>
