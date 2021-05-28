<?php
require_once '../load.php';
confirm_logged_in();

$id = $_SESSION['movies_id'];
$current_user = getSingleUser($id);

if(empty($current_user)){
    $message = 'Failed to get user info';

}

if(isset($_POST['submit'])){
$data = array (
    'movies_cover'=>trim($_POST['movies_cover']),
    'movies_title'=>trim($_POST['movies_title']),
    'movies_storyline'=>trim($_POST['movies_storyline']),
    'movies_release'=>trim($_POST['movies_release']),
    'movies_year'=>trim($_POST['movies_year'])
);

$message = editUser($data);
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
    <title>Edit user</title>
</head>
<body>
    <h2>Edit user</h2>

    <?php echo !empty($message) ? $message:'';?>
    <?php if(!empty($current_user)): ?>
    <form action="admin_edituser.php" method="post">
<?php while($user_info = $current_user->fetch(PDO::FETCH_ASSOC)):?>

 <label for="first_name">Cover</label>
 <input type="text" name="movies_cover" value="<?php echo $user_info['movies_cover']; ?>"  id="first_name">

 
 <label for="username">Name</label>
 <input type="text" name="movies_title" value="<?php echo $user_info['movies_title']; ?>" id="username">

 
 <label for="password">Description</label>
 <input type="text" name="movies_storyline" value="<?php echo $user_info['movies_storyline']; ?>" id="password">

 
 <label for="username">Color</label>
 <input type="text" name="movies_release" value="<?php echo $user_info['movies_release']; ?>" id="email">


 <label for="username">Price</label>
 <input type="text" name="movies_year" value="<?php echo $user_info['movies_year']; ?>" id="username">

 
 <button type="submit" name="submit">Update user</button>

 <?php endwhile;?>
 </form>

 <?php endif;?>
</body>
</html>