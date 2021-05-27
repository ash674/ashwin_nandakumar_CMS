<?php


function getUserLevelMap(){
return array(
    '0'=>'Web Editor',
    '1'=>'Web Admin'
);
}

function getCurrentUserLevel(){
    $user_level_map = getUserLevelMap();

    if(isset($_SESSION['user_level']) && array_key_exists($_SESSION['user_level'], $user_level_map)){
return $user_level_map[$_SESSION['user_level']];
    }

    else{
        return 'not recognized';
    }

}


function createUser($user_data){

$pdo = Database::getInstance()->getConnection();

$create_user_query = 'INSERT INTO tbl_movies(movies_cover, movies_title, movies_year, movies_storyline, movies_release)';
$create_user_query.= ' VALUES(:movies_cover, :movies_title, :movies_year, :movies_storyline, :movies_release)';
$create_user_set = $pdo->prepare($create_user_query);
$create_user_result = $create_user_set->execute(

    array(
':movies_cover'=>$user_data['movies_cover'],
':movies_title'=>$user_data['movies_title'],
':movies_year'=>$user_data['movies_year'],
':movies_storyline'=>$user_data['movies_storyline'],
':movies_release'=>$user_data['movies_release']
    )

    );

if($create_user_result){ 
    
  redirect_to('index.php');


}
else{
    return 'User not allowed';
}

}

function getSingleUser($user_id){
    $pdo = Database::getInstance()->getConnection();

   $get_user_query = 'SELECT * FROM tbl_movies WHERE user_id = :id';
   $get_user_set = $pdo->prepare($get_user_query);
   $result = $get_user_set->execute(
       array(
           ':id'=>$user_id
       )
       );

       if($result && $get_user_set->rowCount()){
           return $get_user_set;
       }else {
           return false;
       }
}


function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();

    $get_user_query = 'SELECT * FROM tbl_movies';
    $users = $pdo->query($get_user_query);
    
 
        if($users){
            return $users;
        }else {
            return false;
        }
}



function isCurrentUserAdminAbove(){
    return !empty($_SESSION['user_level']);
}

function userExists($username) {
    $pdo = Database::getInstance()->getConnection();
    $user_exists_query = 'SELECT COUNT(*) FROM tbl_user WHERE user_name = :username';
    $user_exists_set = $pdo->prepare($user_exists_query);
    $user_exists_result= $user_exists_set->execute(
        array(
            ':username'=>$username
        )
    );

    return !$user_exists_result || $user_exists_set->fetchColumn()>0;
}

function deleteUser($user_id){
$pdo = Database::getInstance()->getConnection();
$delete_user_query = 'DELETE FROM tbl_movies WHERE user_id = :id';
$delete_user_set = $pdo->prepare($delete_user_query);
$delete_user_result = $delete_user_set->execute(
    array(
        ':id'=>$user_id
    )
);

if($delete_user_result && $delete_user_set->rowCount()>0){
    redirect_to('admin_deleteuser.php');
}
else {
    return false;
}

}


function editUser($user_data){
    
        $pdo = Database::getInstance()->getConnection();
    
        $update_user_query = 'UPDATE tbl_movies SET movies_cover = :movies_cover, movies_title = :movies_title, movies_storyline = :movies_storyline, movies_release = :movies_release, movies_year = :movies_year, WHERE user_id = :id';
        $update_user_set = $pdo->prepare($update_user_query);
        $update_user_result = $update_user_set->execute(
            array(
                ':movies_cover'=> $user_data['movies_cover'],
                ':movies_title'=> $user_data['movies_title'],
                ':movies_storyline'=> $user_data['movies_storyline'],
                ':movies_release'=> $user_data['movies_release'],
                ':movies_year'=> $user_data['movies_year'],
                ':id'=> $user_data['id'],
            )
        );

        if($update_user_result){
            redirect_to('index.php');
        }
        else{
            return 'User not allowed';
        }
        }
        