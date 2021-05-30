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
    <title>Welcome to details page</title>
</head>
<body>

<?php include './template/detailsheader.php';?>     
<?php if(!empty($movie)):?>
    <div class='movie-item'>
        <section class="movieEle">
<img src="images/<?php echo $movie['movies_cover']; ?>" alt="<?php echo $movie['movies_title']; ?> Cover image" class="detailsImage">
<section class="movieCon">
<h2><?php echo $movie['movies_title']; ?></h2>
<h4>Price: $<?php echo $movie['movies_year']; ?></h4>
<h4>Colors Available: <?php echo $movie['movies_release']; ?></h4>
<p>Description: <?php echo $movie['movies_storyline']; ?></h4>
</section>
</section>
</div>
<?php else:?>
    <p>There isnt such a product</p>
    <?php endif;?>

    <?php include './template/footer.php'; ?>
</body>
<script src="js/menu.js"></script>
</html>