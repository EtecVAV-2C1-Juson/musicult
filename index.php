<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'includes/header.php';
?>

<section class="hero-section">
    <div class="hero-content">
        <h1>Vem estudar música com a gente!</h1>
        <p>Explore a conexão profunda entre melodias, contextos sociais e grandes ícones da história da arte e da cultura mundial.</p>
        
        <div class="hero-buttons">
            <a href="curso.php" class="btn-primary">Ver todas as Aulas</a>
            <a href="simulado.php" class="btn-secondary">Testar Conhecimento</a>
        </div>
    </div>
</section>

<section class="about-section">
    <div class="about-container">
        <h2>Como funciona a plataforma?</h2>
        <div class="about-grid">
            <div class="about-card">
                <h3>Texto direto e leve</h3>
                <p>Os textos foram preparados para serem fáceis de ler mas com muito conteúdo para que a aprendizagem seja mais tranquiçla.</p>
            </div>
            <div class="about-card">
                <h3>Foco total na prática</h3>
                <p>No fim de cada etapa, existem exercícios para ajudar a fixar o conteúdo de um jeito simples e eficiente.</p>
            </div>
            <div class="about-card">
                <h3>Simulado</h3>
                <p>Para que confira se aprendeu mesmo a matéria. As perguntas são sorteadas de todos os temas e após a conclusão um feedback detalhado é dado.</p>
            </div>
        </div>
    </div>
</section>

<section class="artists-intro-section">
    <div class="artists-intro-container">
        <h2>Aprenda através de grandes artistas</h2>
        <p class="artists-intro-desc">
            Para ir além da teoria, são utilizados diversas artistas diferentes para exemplificar como cada temática das aulas foi aplicada. 
            Confira alguns exemplos: 
        </p>

        <div class="artists-preview-grid">
            <div class="artist-preview-card">
                <h3>Beyoncé</h3>
                <p>A aula trata da inovação pop, das performances e do impacto cultural que ela traz para os dias de hoje.</p>
            </div>
            <div class="artist-preview-card">
                <h3>Michael Jackson</h3>
                <p>A aula aborda a revolução gigante que ele fez com os videoclipes e como consolidou o pop no mundo todo.</p>
            </div>
            <div class="artist-preview-card">
                <h3>Rita Lee</h3>
                <p>A aula mostra toda a irreverência, a liberdade criativa e a marca registrada do rock nacional.</p>
            </div>
        </div>

        <div class="artists-cta">
            <a href="curso.php" class="btn-primary">Ver todos os artistas</a>
        </div>
    </div>
</section>

<?php
include_once 'includes/footer.php';
?>