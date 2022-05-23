<?php

class DatabaseConnection
{
    public function __construct()
    {
        try {
            $conn = new mysqli(HOST, USER, PASSWORD, DATABASE);

            if($conn->connect_error) {
                throw new Exception(die ('Database connection failed ' . $conn->connect_error));
            }
            return $this->conn = $conn;
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}

?>