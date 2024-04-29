<form action="/book/add" method="POST" class="popup" id="popup">
    <h2>Форма додавання книги</h2>
    <img src="/public/img/close.svg" class="close-popup">
    <label for="title">
        <div class="label_text">
            Назва книги
        </div>
        <input type="text" name="title" id="title">
        <h5 id="title_error"></h5>
    </label>
    <label for="description">
        <div class="label_text">
            Опис
        </div>
        <textarea name="description"></textarea>
    </label>
    <label for="category" class="select">
        <div class="label_text">
            Категорія
        </div>
        <select name="category" class="select">
            <?php foreach ($data['categories'] as $category): ?>
                <option value="<?=$category->id?>"><?=$category->title?></option>
            <?php endforeach; ?>
        </select>
    </label>
    <label for="author" class="select">
        <div class="label_text">
            Автор
        </div>
        <select name="author" class="select">
            <?php foreach ($data['authors'] as $author): ?>
                <option value="<?=$author->id?>"><?=$author->name?></option>
            <?php endforeach; ?>
        </select>
    </label>
    <label for="price">
        <div class="label_text">
            Ціна
        </div>
        <input type="text" name="price" id="price">
        <h5 id="price_error"></h5>
    </label>
    <button type="submit">Додати</button>
</form>
