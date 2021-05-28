<?php
require_once '../load.php';

confirm_logged_in(true);

if(isset($_POST['submit'])) {
    $data = array(
        'movies_cover'=>trim($_POST['movies_cover']),
        'movies_title'=>trim($_POST['movies_title']),
        'movies_year'=>trim($_POST['movies_year']),
        'movies_storyline'=>trim($_POST['movies_storyline']),
        'movies_release'=>trim($_POST['movies_release'])
 );

    $message = createUser($data);
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">  
    <title>Create User</title>
      <link rel="stylesheet" href="main.css">    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
<section class="createSection">
<h2>Create Entry</h2>
<?php echo !empty($message)?$message:''; ?>
<form action="admin_createuser.php" method="post">
<label>Product Cover</label>
<input type="text" name="movies_cover" value="" id="first_name">


<label for="username">Product Title</label>
<input type="text" name="movies_title" value="" id="username">


<label for="name">Product Price</label>
<input type="name" name="movies_year" value="" id="price">


<label for="password">Product Description</label>
<input type="text" name="movies_storyline" value="" id="password">


<label for="password">Product Color</label>
<input type="text" name="movies_release" value="" id="password">

<button type="submit" name="submit" >Create</button>


</form>
</body>
</html>
