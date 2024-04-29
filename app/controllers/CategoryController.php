<?php

require_once 'app/traits/PaginationTrait.php';
require_once 'app/traits/BookTrait.php';

class CategoryController extends Controller
{
    use PaginationTrait;
    use BookTrait;

    private function index(string $category, string $method): void
    {
        $data = [
            'title' => $category,
            'description' => 'Книги із категорії ' . $category,
            'method' => $method
        ];

        // Get book categories and authors
        $data['categories'] = $this->getBookCategories();
        $data['authors'] = $this->getBookAuthors();

        $books = $this->model('Book');

        // Pagination
        $bpp = 20;  // bpp - books per page
        $pagination = $this->paginate($books, $bpp, $category);
        $data['page_count'] = $pagination['count'];

        // Get books
        $data['books'] = $books->getBooksLimited($pagination['offset'], $bpp, $category);

        // Sort books by title
        $data['books'] = $this->sortBooksByTitle($data['books']);

        $this->view('category/index', $data);
    }

    public function art(): void
    {
        $this->index('Художня література', 'art');
    }

    public function detectives(): void
    {
        $this->index('Детективи', 'detectives');
    }

    public function psychology(): void
    {
        $this->index('Психологія', 'psychology');
    }

    public function history(): void
    {
        $this->index('Історія', 'history');
    }

    public function children(): void
    {
        $this->index('Дитяча література', 'children');
    }
}
