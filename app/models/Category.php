<?php

require_once 'app/core/DB.php';

class Category
{
    private $_db = null;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function getCategories(): array
    {
        return $this->_db->query("SELECT `id`, `title` FROM `categories`")->fetchAll(PDO::FETCH_OBJ);
    }
}