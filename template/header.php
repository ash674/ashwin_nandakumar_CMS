
<header>
<section class="HeadNav">
    <section class="logoSection">
    <img src="images/sportchek-logo.png" alt="">
    </section>
    <section class="filterNav">
    <nav>
    <a href="index.php?filter=man">Men</a>
    <a href="index.php?filter=female">Women</a>
    <a href="index.php?filter=children">Kids</a>
     <a href="index.php">All</a>
    </nav>
    </section>

    <section class="adminRedirect"><a href="./admin/index.php"><img src="./images/admin.svg" alt=""></a></section>
</section>

<section class="sortAndSearch">

<div class="dropdown">
  <button class="dropbtn">Sort</button>
  <div class="dropdown-content">
      <a href="index.php?type=shoes">Shoes</a>
    <a href="index.php?type=jacket">Jackets</a>
    <a href="index.php?type=hoodie">Hoodies</a>
      <a href="index.php?type=pants">Pants</a>
    <a href="index.php?type=swimwear">Swimwear</a>
    <a href="index.php?type=shorts">Shorts</a>
    <a href="index.php?type=leggings">Leggings</a>
  </div>
</div>


<form method="GET" >
<input id="search" name="search" type="text" placeholder="search">
<input id="submit" type="submit" name='submit' value="search">
</form>
</section>
</header>   