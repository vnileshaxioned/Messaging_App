<?php
  include('../controller/UserController.php');
  $userData->notLogin('id');
  include('../includes/header.php');
  include('../includes/nav.php');
?>
<div class="container">
  <div class="message">
    <?php
      $user = $userData->userDetails('users', 'i', 'id', $_GET['id']);
      if ($user) {
    ?>
    <div class="message-head">
      <h3><?php echo $user['name']; ?></h3>
      <span><?php include('../includes/message.php'); ?></span>
    </div>
    <div class="message-body">
      <?php
      $chats = $userData->messageList('chats', $_SESSION['id'], $user['id']);
      if ($chats) {
        foreach ($chats as $chat) {
          if ($chat['to_user'] == $_SESSION['id'] || $chat['to_user'] == $user['id']) {
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
            <p><?php echo nl2br($chat['message']); ?></p>
          </div>
        </div>
      </div>
      <?php } } } ?>
      <div class="message-partition">
        <div class="text">
          <b>This conversation is just between the two of you</b>
          <p>Here you can send messages with <?php echo $user['name']; ?></p>
        </div>
      </div>
    </div>
    <div class="message-footer">
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <div class="message-text">
          <input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>">
          <input type="hidden" name="to_user" value="<?php echo $user['id']; ?>">
          <textarea name="message" cols="30" rows="5" placeholder="Send a message to <?php echo $user['name']; ?>"></textarea>
        </div>
        <div class="message-send">
          <input type="submit" name="send_message" class="btn btn-success" value="Send">
        </div>
      </form>
    </div>
    <?php } ?>
  </div>
</div>
<?php
  include('../includes/footer.php');
?>