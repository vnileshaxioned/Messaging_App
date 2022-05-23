<?php

require_once('DatabaseConnection.php');

define('HOST', 'localhost');
define('USER', 'phpmyadmin');
define('PASSWORD', 'root');
define('DATABASE', 'messaging_app');

$db = new DatabaseConnection;

?>