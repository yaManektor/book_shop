<?php

class DB
{
    private static $_db = null;
    
    public static function getInstance(): object
    {
        if (self::$_db == null)
            self::$_db = new PDO('mysql:host=localhost;dbname=book_shop', 'root', '');

        return self::$_db;
    }

    private function __construct() {}
    private function __clone() {}
}