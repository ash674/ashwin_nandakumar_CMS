<?php
 require_once '../load.php';
 confirm_logged_in(true);
 $users = getAllUsers();

 if(!$users){
     $message = 'failed to get users list';
 }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="sub.css">    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">  
    <title>Edit User</title>
</head>
<body>
    <h2>Edit other users account</h2>
    <?php echo !empty($message) ? $message : ''; ?>
<a href="index.php" class="redLink">Back to Dashboard page</a>
    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Edit</th>
            </tr>
        </thead>

        <tbody>
            <?php while($single_user = $users->fetch(PDO::FETCH_ASSOC)): ?>

            <tr>
                <td><?php echo $single_user['movies_id']; ?></td>
                <td><?php echo $single_user['movies_title']; ?></td>
                <td><?php echo $single_user['movies_release']; ?></td>
                <td><a href="admin_edituser.php?movies_id=<?php echo $single_user['movies_id']; ?>">Edit</a></td>
           </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>
