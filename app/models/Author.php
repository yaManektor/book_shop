<?php

require_once 'app/core/DB.php';

class Author
{
    private $_db = null;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function getAuthors(): array
    {
        return $this->_db->query("SELECT `id`, `name` FROM `authors`")->fetchAll(PDO::FETCH_OBJ);
    }
}