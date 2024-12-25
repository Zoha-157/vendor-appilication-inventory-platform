// Navigation Burgur
burger = document.querySelector('.burger');
navig = document.querySelector('.navig');
navul = document.querySelector('.navul');

burger.addEventListener('click', () => {
    navul.classList.toggle('v-class-resp');
    navig.classList.toggle('h-nav-resp');
});

// Dashboard section
function logout() {
    window.open("/accounts/logout/", "_self");
}

function inventoryRedir() {
    window.open("/inventory", "_self");
}

function transactionsRedir() {
    window.open("/transactions", "_self");
}