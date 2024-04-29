<!doctype html>
<html lang="ua">

<head>
    <?php require_once('public/blocks/head.php') ?>
    <link rel="stylesheet" href="/public/css/book.css">
</head>

<body>
    <?php require_once('public/blocks/header.php') ?>

    <div class="container main">
        <h1><?=$data['book']->title?></h1>
        <h4>Категорія: <?=$data['book']->category?></h4>
        <hr>

        <div class="info">
            <div class="img">
                <img src="/public/img/<?=$data['book']->img?>" alt="<?=$data['book']->title?>">
            </div>
            <div class="desc">
                <h2>Опис книги</h2>
                <hr>
                <h4>Автор: <?=$data['book']->author_name?></h4>
                <p><?=$data['book']->descript?></p>
            </div>
        </div>

        <form method="POST">
            <input type="hidden" name="item_id" value="<?=$data['book']->id?>">
            <button class="btn">Купити за <?=$data['book']->price?> грн.</button>
        </form>
    </div>

    <?php require_once('public/blocks/footer.php') ?>
</body>

</html>
