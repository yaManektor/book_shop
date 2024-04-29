<?php if (empty($data['books'])): ?>
    <h5>Нічого не знайдено</h5>
<?php else: ?>
    <?php foreach ($data['books'] as $book): ?>
        <div class="book">
            <div class="top">
                <div class="image">
                    <img src="/public/img/<?=$book->img?>" alt="<?=$book->title?>">
                </div>
                <div class="title">
                    <h3><?=$book->title?></h3>
                </div>
            </div>

            <div class="bot">
                <h5>Автор: <?=$book->author_name?></h5>
                <p>Ціна: <?=$book->price?> грн.</p>
                <a href="/book/<?=$book->id?>"><button class="btn">Детальніше</button></a>
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>
