<?php

trait PaginationTrait
{
    private function paginate(Book $book, int $bpp, string $category = null, string $title = null): array
    {
        return [
            'count' => $title == null ? ceil($book->getCount($category)->count / $bpp) :
                ceil($book->getTitleCount($title)->count / $bpp),
            'offset' => ((!empty($_GET['page']) ? $_GET['page'] : 1) - 1) * $bpp
        ];
    }
}