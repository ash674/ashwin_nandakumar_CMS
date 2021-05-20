<?php
require_once './config/database.php';
require_once './admin/scripts/read.php';


if(isset($_GET['filter'])) {
    $filter = $_GET['filter'];
    $getMovies = getMoviesByGenre($filter);
}

else{
    $getMovies = getAllMovies();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <title>Welcome to cms</title>
</head>
<body>
<?php include 'template/header.php'; ?> 

<section class="movie-disp">
<?php foreach ($getMovies as $movie):?>
    <div class='movie-item'>
<img src="images/<?php echo $movie['movies_cover']; ?>" alt="<?php echo $movie['movies_title']; ?> cover image">
<h2><?php echo $movie['movies_title']; ?></h2>
<a href="details.php?id=<?php echo $movie['movies_id']; ?>">More details</a>
</div>
    <?php endforeach;?>
    </section>
    <?php include './template/footer.php'; ?>
 


</body>
<script src="dropdown.js"></script>
</html>