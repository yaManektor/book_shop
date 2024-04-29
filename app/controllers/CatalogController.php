<?php

require_once 'app/traits/PaginationTrait.php';
require_once 'app/traits/BookTrait.php';

class CatalogController extends Controller
{
    use PaginationTrait;
    use BookTrait;

    public function index(): void
    {
        $data = [
            'title' => 'BookShop',
            'description' => 'Головна сторінка магазину книг',
        ];

        // Get book categories and authors for add_form
        $data['categories'] = $this->getBookCategories();
        $data['authors'] = $this->getBookAuthors();

        $books = $this->model('Book');

        // Pagination
        $bpp = 20;  // bpp - books per page
        $pagination = $this->paginate($books, $bpp);
        $data['page_count'] = $pagination['count'];

        // Get books
        $data['books'] = $books->getBooksLimited($pagination['offset'], $bpp);

        // Sort books by title
        $data['books'] = $this->sortBooksByTitle($data['books']);

        $this->view('catalog/index', $data);
    }

    public function search(): void
    {
        $data = [
            'title' => 'Пошук по сайту',
            'description' => 'Пошук книги по назві',
            'search_title' => !empty($_POST['search']) ? $_POST['search'] : null
        ];

        // Get book categories and authors
        $data['categories'] = $this->getBookCategories();
        $data['authors'] = $this->getBookAuthors();

        // Get books
        $books = $this->model('Book');

        // Next page of search
        $data['search_title'] = $_GET['search'] ?? $data['search_title'];

        // Pagination
        $bpp = 20;  // bpp - books per page
        $pagination = $this->paginate($books, $bpp, title: $data['search_title']);
        $data['page_count'] = $pagination['count'];

        // Get books
        $data['books'] = $data['search_title'] != null ?
                         $books->getBooksByTitle($pagination['offset'], $bpp, $data['search_title']) : [];

        // Sort books by title
        $data['books'] = $this->sortBooksByTitle($data['books']);

        $this->view('catalog/search', $data);
    }
}
