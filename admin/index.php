<?php
require_once '../load.php'; 
confirm_logged_in();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">  
    <title>Dashboard page</title>
</head>
<body>
    <img src="../images/sportchek-logo.png" alt="logo" class="logoBody">
<section class='body'>
    <h2>Welcome to Dashboard page <?php echo $_SESSION['user_name']; ?> </h2>
    <section class='options'>
   <?php if(isCurrentUserAdminAbove()): ?>
     <a href="admin_createuser.php">Create Entry</a>
     <a href="admin_deleteuser.php">Delete Entry</a>
     <a href="admin_editother.php">Edit entries</a>
   <?php endif;?>
    <a href="admin_logout.php">Sign out</a>
    </section>
    </section>
</body>
</html>