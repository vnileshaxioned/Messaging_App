<header>
  <nav>
    <div class="left">
      <h1><a href="./">Messaging App</a></h1>
    </div>
    <div class="right">
      <ul>
        <?php
          $id = $_SESSION['id'];
          $detail = $userData->userDetails('users', 'i', 'id', $id);
          if ($detail) {
        ?>
        <li><?php echo $detail['name']; ?></li>
        <li><a href="group_chat.php">Group Chat</a></li>
        <li><a href="account.php">Account</a></li>
        <li><img src="../assets/upload/<?php echo $detail['profile_image']; ?>" alt="<?php echo $detail['profile_image']; ?>"></li>
        <li>
          <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
            <button type="submit" name="user_logout" class="btn-logout">Logout</button>
          </form>
        </li>
        <?php } ?>
      </ul>
    </div>
  </nav>
</header>