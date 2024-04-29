<?php

trait BookTrait
{
    private function getBookCategories(): array
    {
        return $this->model('Category')->getCategories();
    }

    private function getBookAuthors(): array
    {
        return $this->model('Author')->getAuthors();
    }

    private function sortBooksByTitle(array $books): array
    {
        if (!empty($_GET['sort']))
            usort($books, function ($a, $b) {
                return $_GET['sort'] == 'asc' ? strcmp($a->title, $b->title) : -strcmp($a->title, $b->title);
            });

        return $books;
    }
}