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
            session_start();

            $book = $this->model('Book');

            // Random image
            $images = ['book.png', 'book_icon.jpg', 'noimage.png'];

            // Validate add book form
            $error = $this->validateBook();

            if ($error == 'none') {
                // Validate book title and description
                $_POST['title'] = $this->validateData($_POST['title']);
                $_POST['description'] = $this->validateData($_POST['description']);

                // Add new book
                $book->addBook($_POST['title'], $_POST['description'], $_POST['category'],
                               $_POST['author'], $images[rand(0, count($images) - 1)], $_POST['price']);

                // Destroy session if set
                unset($_SESSION['error']);
            } else
                $_SESSION['error'] = $error;
        }

        header('Location: /');
    }

    private function validateBook(): string
    {
        if (strlen($_POST['title']) < 3 || strlen($_POST['title']) > 50)
            return 'Введіть коректну назву книги';
        elseif (!is_numeric($_POST['price']))
            return 'Введіть коректну ціну';
        else
            return 'none';
    }
}