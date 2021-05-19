<?php

require_once './config/database.php';

require_once './admin/scripts/read.php';

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $movie = getSingleMovie($id);

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <title>Welcome to details page bruh</title>
</head>
<body>

<?php include './template/header.php'; ?>     
<?php if(!empty($movie)):?>
    <div class='movie-item'>
<img src="images/<?php echo $movie['movies_cover']; ?>" alt="<?php echo $movie['movies_title']; ?> Cover image">
<h2><?php echo $movie['movies_title']; ?></h2>
<h4>Movie released: <?php echo $movie['movies_release']; ?></h4>
<p>Plot: <?php echo $movie['movies_storyline']; ?></h4>
</div>
<?php else:?>
    <p>There isnt such a movie</p>
    <?php endif;?>

    <?php include './template/footer.php'; ?>
</body>
</html>