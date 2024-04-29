<header>
    <div class="container top-menu">
        <div class="nav">
            <a href="/">Головна</a>
            <a href="#" class="open-popup">Додати книгу</a>
        </div>
    </div>

    <div class="popup_bg">
        <?php require_once('public/blocks/popup_form.php') ?>
    </div>

    <div class="container middle">
        <form action="/catalog/search" method="POST" class="search">
            <input type="text" name="search" placeholder="Пошук книги на сайті. . .">
            <button type="submit">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
    </div>

    <div class="container menu">
        <ul>
            <li><a href="/category/art">Художня література</a></li>
            <li><a href="/category/detectives">Детективи</a></li>
            <li><a href="/category/psychology">Психологія</a></li>
            <li><a href="/category/history">Історія</a></li>
            <li><a href="/category/children">Дитяча література</a></li>
        </ul>
    </div>
</header>
