<!doctype html>
<html lang="ua">

<head>
    <?php require_once('public/blocks/head.php') ?>
</head>

<body>
    <?php require_once('public/blocks/header.php') ?>

    <div class="container main">
        <h1><?=$data['title']?></h1>
        <hr>

        <p>Сортувати по назві:
            <?php if (isset($_GET['sort']) && $_GET['sort'] == 'asc'): ?>
                <a href="/category/<?=$data['method']?>&page=<?=$_GET['page'] ?? null?>&sort=desc">Від Я до А</a>
            <?php else: ?>
                <a href="/category/<?=$data['method']?>&page=<?=$_GET['page'] ?? null?>&sort=asc">Від А до Я</a>
            <?php endif; ?>
        </p>

        <div class="books">
            <?php require_once('public/blocks/books.php') ?>
        </div>

        <div class="pagination">
            <?php
                if (isset($data['page_count'])) :
                    for ($i = 1; $i <= $data['page_count']; $i++):
            ?>
            <a href="/category/<?=$data['method']?>&page=<?=$i?>&sort=<?=$_GET['sort'] ?? null?>">
                <button class="page-btn"><?=$i?></button>
            </a>
            <?php
                    endfor;
                endif;
            ?>
        </div>
    </div>

    <?php require_once('public/blocks/footer.php') ?>
</body>

</html>
