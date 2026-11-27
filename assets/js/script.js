document.addEventListener('DOMContentLoaded', function() {
    const menuToggle = document.getElementById('menu-toggle');
    const mobileMenu = document.getElementById('mobile-menu');

    if (!menuToggle || !mobileMenu) return;

    // menu hamburger abre e fecha
    menuToggle.addEventListener('click', function() {
        mobileMenu.classList.toggle('active');
        const menuAberto = mobileMenu.classList.contains('active');
        menuToggle.setAttribute('aria-expanded', menuAberto);
    });

    // fecha menu quando clica nos itens
    const linksMenu = mobileMenu.querySelectorAll('a');
    linksMenu.forEach(function(link) {
        link.addEventListener('click', function() {
            mobileMenu.classList.remove('active');
            menuToggle.setAttribute('aria-expanded', 'false');
        });
    });

    // fecha menu quando clica fora dele
    document.addEventListener('click', function(event) {
        const clicouNoMenu = mobileMenu.contains(event.target);
        const clicouNoBotao = menuToggle.contains(event.target);

        if (!clicouNoMenu && !clicouNoBotao && mobileMenu.classList.contains('active')) {
            mobileMenu.classList.remove('active');
            menuToggle.setAttribute('aria-expanded', 'false');
        }
    });
});