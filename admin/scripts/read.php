<?php

function getAllMovies(){
    $pdo = Database:: getInstance()->getConnection();
    $queryAll = "SELECT * FROM tbl_movies";
    $runAll = $pdo->query($queryAll);
    $movies = $runAll->fetchAll(PDO::FETCH_ASSOC);
    if($movies) {
        return $movies;

    } 
    else {
        return 'No entries found';
    }
}

function getSingleMovie($id){
    $pdo = Database:: getInstance()->getConnection();
    $querySingle = 'SELECT * FROM tbl_movies WHERE movies_id ="'.$id.'"';
    $runSingle = $pdo->query($querySingle);
  
    if($runSingle){
        $movie = $runSingle->fetch(PDO::FETCH_ASSOC);
     return $movie;
    }

    else {
        return 'No entries found';
    }
}


function getMoviesByType($sort){
    $pdo = Database:: getInstance()->getConnection();
    $query= 'SELECT m.*, GROUP_CONCAT(t.type_name) as type_name FROM tbl_movies m';
    $query.= ' LEFT JOIN tbl_mov_type link ON link.movies_id = m.movies_id';
    $query.= ' LEFT JOIN tbl_type t ON link.type_id = t.type_id';
    $query.= ' GROUP BY m.movies_id';
    $query.= ' HAVING type_name LIKE "%'.$sort.'%"';
    $runSortQuery = $pdo->query($query);
    if($runSortQuery){
      $movies = $runSortQuery->fetchAll(PDO::FETCH_ASSOC);
      return $movies;
    }

    else {
        return 'No entries found';
    }
}

function getMoviesByTypeAndName($sort){
    $pdo = Database:: getInstance()->getConnection();
    $query= 'SELECT m.*, GROUP_CONCAT(t.type_name) as type_name FROM tbl_movies m';
    $query.= ' LEFT JOIN tbl_mov_type link ON link.movies_id = m.movies_id';
    $query.= ' LEFT JOIN tbl_type t ON link.type_id = t.type_id';
    $query.= ' GROUP BY m.movies_id';
    $query.= ' HAVING type_name LIKE "%'.$sort.'%" OR movies_title LIKE "%'.$sort.'%"';
    $runSortQuery = $pdo->query($query);
    if($runSortQuery){
      $movies = $runSortQuery->fetchAll(PDO::FETCH_ASSOC);
      return $movies;
    }

    else {
        return 'No entries found';
    }
}


function getMoviesByGenre($genre){
    $pdo = Database:: getInstance()->getConnection();
    $query= 'SELECT m.*, GROUP_CONCAT(g.genre_name) as genre_name FROM tbl_movies m';
    $query.= ' LEFT JOIN tbl_mov_genre link ON link.movies_id = m.movies_id';
    $query.= ' LEFT JOIN tbl_genre g ON link.genre_id = g.genre_id';
    $query.= ' GROUP BY m.movies_id';
    $query.= ' HAVING genre_name LIKE "%'.$genre.'%"';
    $runQuery = $pdo->query($query);
    if($runQuery){
      $movies = $runQuery->fetchAll(PDO::FETCH_ASSOC);
      return $movies;
    }

    else {
        return 'oops';
    }
}



function getMoviesBySearch($search){
    $pdo = Database:: getInstance()->getConnection();
    $query= 'SELECT m.*, GROUP_CONCAT(t.type_name) as type_name FROM tbl_movies m';
    $query.= ' LEFT JOIN tbl_mov_type link ON link.movies_id = m.movies_id';
    $query.= ' LEFT JOIN tbl_type t ON link.type_id = t.type_id';
    $query.= ' GROUP BY m.movies_id';
    $query.= ' HAVING type_name LIKE "%'.$search.'%"';
    $runAll = $pdo->query($query);
    if($runAll) {
        $movies = $runAll->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
      } 
    else {
        return 'No entries found';
    }
}