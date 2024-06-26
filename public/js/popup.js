let popupBg = document.querySelector('.popup_bg');
let popup = document.querySelector('.popup');
let openPopupButton = document.querySelector('.open-popup');
let closePopupButton = document.querySelector('.close-popup');

openPopupButton.addEventListener('click', (e) => {
    e.preventDefault();
    popupBg.classList.add('active');
    popup.classList.add('active');
});

closePopupButton.addEventListener('click', (e) => {
    popupBg.classList.remove('active');
    popup.classList.remove('active');
});

document.addEventListener('click', (e) => {
    if (e.target === popupBg) {
        popupBg.classList.remove('active');
        popup.classList.remove('active');
    }
});