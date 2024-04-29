<?php

require_once 'app/core/DB.php';

class Book
{
    private $_db = null;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function getCount(string $category = null): object
    {
        $sql = "SELECT COUNT(*) as count FROM `books`";

        $sql .= $category != null ? "JOIN `categories` ON books.category_id = categories.id
                                     WHERE categories.title = '$category'" : null;

        return $this->_db->query($sql)->fetch(PDO::FETCH_OBJ);
    }

    public function getTitleCount(string $title): object
    {
        return $this->_db->query("SELECT COUNT(*) as count FROM `books` WHERE `title` LIKE '%$title%'")
                         ->fetch(PDO::FETCH_OBJ);
    }

    public function getBooksLimited(int $offset, int $limit, string $category = null): array
    {
        $sql = "SELECT books.id, books.title, books.img, books.price,
                authors.name as author_name, categories.title as category FROM `books`
                JOIN `authors` ON books.author_id = authors.id
                JOIN `categories` ON books.category_id = categories.id";

        $sql .= $category != null ? " WHERE categories.title = '$category'" : null;
        $sql .= " ORDER BY `id` DESC";
        $sql .= $limit != null ? " LIMIT $limit OFFSET $offset" : null;

        return $this->_db->query($sql)->fetchAll(PDO::FETCH_OBJ);
    }

    public function getBooksByTitle(int $offset, int $limit, string $title): array
    {
        $sql = "SELECT books.id, books.title, books.descript, books.img, books.price,
                authors.name as author_name, categories.title as category FROM `books`
                JOIN `authors` ON books.author_id = authors.id
                JOIN `categories` ON books.category_id = categories.id
                WHERE books.title LIKE '%$title%'";

        $sql .= $limit != null ? " LIMIT $limit OFFSET $offset" : null;

        return $this->_db->query($sql)->fetchAll(PDO::FETCH_OBJ);
    }

    public function getOneBook(int $id): object
    {
        return $this->_db->query("SELECT books.id, books.title, books.descript, books.img, books.price,
                                            authors.name as author_name, categories.title as category FROM `books`
                                            JOIN `authors` ON books.author_id = authors.id
                                            JOIN `categories` ON books.category_id = categories.id
                                            WHERE books.id = '$id'")
                         ->fetch(PDO::FETCH_OBJ);
    }

    public function addBook(string $title, string $desc, string $category, string $author, int $price): bool
    {
        return $this->_db->prepare("INSERT INTO `books`
                                            (`title`, `descript`, `author_id`, `category_id`, `img`, `price`) VALUES
                                            (:title, :descript, :author, :category, 'noimage.png', :price)")
                         ->execute([
                             'title' => $title,
                             'descript' => $desc,
                             'author' => $author,
                             'category' => $category,
                             'price' => $price,
                         ]);
    }
}