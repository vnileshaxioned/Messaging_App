<?php
  include('../controller/UserController.php');
  $userData->notLogin('id');
  include('../includes/header.php');
  include('../includes/nav.php');
?>
<div class="container">
  <div class="message">
    <div class="message-head">
      <h3>Group Chat</h3>
      <span><?php include('../includes/message.php'); ?></span>
    </div>
    <div class="message-body">
      <?php
      $chats = $userData->groupMessageList('group_chats', $_SESSION['id']);
      if ($chats) {
        foreach ($chats as $chat) {
      ?>
      <div class="message-partition">
        <img src="../assets/upload/<?php echo $chat['profile_image']; ?>" alt="<?php echo $chat['profile_image']; ?>">
        <div class="message-view">
          <div class="user-info">
            <p><b><?php echo $chat['name']; ?></b></p>
            <p><?php echo $chat['time']; ?></p>
            <p><?php echo $chat['date']; ?></p>
          </div>
          <div class="text">
            <p><?php echo $chat['message']; ?></p>
          </div>
        </div>
      </div>
      <?php } } ?>
    </div>
    <div class="message-footer">
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <div class="message-text">
          <input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>">
          <textarea name="message" cols="30" rows="5" placeholder="Send a message to <?php echo $user['name']; ?>"></textarea>
        </div>
        <div class="message-send">
          <input type="submit" name="send_group_message" class="btn btn-success" value="Send">
        </div>
      </form>
    </div>
  </div>
</div>
<?php
  include('../includes/footer.php');
?>