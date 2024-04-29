function validation() {
    let result = false;
    let title = document.getElementById('title').value;
    let price = document.getElementById('price').value;
    let title_error = document.getElementById('title_error');
    let price_error = document.getElementById('price_error');

    if (title.length < 1)
        title_error.innerText = 'Це поле обов\'язкове';
    else if (title.length < 3 || title.length > 50)
        title_error.innerText = 'Довжина повинна бути від 3 до 50 символів';
    else {
        title_error.innerText = '';
    }

    if (isNaN(price) || price === '')
        price_error.innerText = 'Введіть коректне число';
    else {
        price_error.innerText = '';
        result = true;
    }

    return result;
}

document.querySelector('.popup').addEventListener('submit', (e) => {
    if (!validation()) {
        e.preventDefault()  ;
    }
});