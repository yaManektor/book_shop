<?php

require_once 'app/traits/BookTrait.php';

class BookController extends Controller
{
    use BookTrait;

    public function index(int $book_id): void
    {
        // Get one book
        $books = $this->model('Book');
        $book = $books->getOneBook($book_id);

        $data = [
            'title' => $book->title,
            'description' => $book->descript,
            'book' => $book
        ];

        // Get book categories and authors
        $data['categories'] = $this->getBookCategories();
        $data['authors'] = $this->getBookAuthors();

        $this->view('book/index', $data);
    }

    public function add(): void
    {
        if (isset($_POST['title'])) {
            $book = $this->model('Book');
            if (!$book->addBook($_POST['title'], $_POST['description'], $_POST['category'],
                               $_POST['author'], $_POST['price'])) {
                echo 'Виникла помилка додавання книги до бази даних';
                exit();
            }
        }

        header('Location: /');
    }
}