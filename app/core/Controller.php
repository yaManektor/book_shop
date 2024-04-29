<?php

abstract class Controller
{
    protected function model(string $model): object
    {
        require_once 'app/models/' . $model . '.php';
        return new $model;
    }

    protected function view(string $view, array $data = []): void
    {
        require_once 'app/views/' . $view . '.php';
    }
}
