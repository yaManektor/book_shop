<?php
class App
{
    private $controller = 'CatalogController';
    private $method = 'index';
    private $params = [];

    public function __construct()
    {
        // Parse URL
        $url = $this->parseUrl();

        // Controller select
        if (isset($url[0])) {
            if (file_exists('app/controllers/' . ucfirst($url[0]) . 'Controller.php')) {
                $this->controller = ucfirst($url[0]) . 'Controller';
                unset($url[0]);
            }
        }

        require_once 'app/controllers/' . $this->controller . '.php';
        $this->controller = new $this->controller();

        // Method select
        if (isset($url[1])) {
            if (method_exists($this->controller, $url[1])) {
                $this->method = $url[1];
                unset($url[1]);
            }
        }

        // Passing method parameters
        $this->params = $url ? array_values($url) : [];

        call_user_func_array([$this->controller, $this->method], $this->params);
    }

    public function parseUrl(): array
    {
        return isset($_GET['url']) ? explode('/', htmlspecialchars(rtrim($_GET['url'], '/'))) : [];
    }
}
