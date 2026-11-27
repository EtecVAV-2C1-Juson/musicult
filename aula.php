<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'includes/header.php';
?>

<section class="lesson-hero">
    <div class="lesson-hero-container">
        <a href="curso.php" class="back-link">&lt; Voltar para todas as aulas</a>
        
        <div class="lesson-tag">AULA • </div>
        <h1></h1>
        <p class="lesson-summary">
            
        </p>

        <div class="lesson-meta-box">
            <div class="meta-item">
                <span class="meta-label">Objetivo da aula</span>
                <span class="meta-value"></span>
            </div>
            <div class="meta-divider"></div>
            <div class="meta-item">
                <span class="meta-label">Duração de leitura</span>
                <span class="meta-value"></span>
            </div>
        </div>
    </div>
</section>

<main class="lesson-main">
    <div class="lesson-container">
        
        <aside class="lesson-toc">
            <h2>Sumário da Aula</h2>
            <p class="toc-hint">Clique em um tópico para ir até ele:</p>
            <div class="toc-list">
                <a href="#topico-1" class="toc-item">
                    <span class="toc-number">01</span>
                    <span class="toc-title"></span>
                </a>
                <a href="#topico-2" class="toc-item">
                    <span class="toc-number">02</span>
                    <span class="toc-title"></span>
                </a>
                <a href="#topico-3" class="toc-item">
                    <span class="toc-number">03</span>
                    <span class="toc-title"></span>
                </a>
            </div>
        </aside>

        <article class="lesson-content">
            
            <section id="topico-1" class="lesson-topic-block">
                <div class="topic-header">
                    <span class="topic-badge">Tópico 1</span>
                    <h2></h2>
                </div>
                <p>
                </p>
            </section>

            <section id="topico-2" class="lesson-topic-block">
                <div class="topic-header">
                    <span class="topic-badge">Tópico 2</span>
                    <h2></h2>
                </div>
                <p>
                </p>
            </section>

            <section id="topico-3" class="lesson-topic-block">
                <div class="topic-header">
                    <span class="topic-badge">Tópico 3</span>
                    <h2></h2>
                </div>
                <p>
                </p>
            </section>

            <div class="lesson-footer-nav">
                <a href="curso.php" class="btn-outline-dark">&lt; Ver todas as aulas</a>
                <a href="simulado.php" class="btn-primary-dark">Ir para o Simulado Geral &gt;</a>
            </div>

        </article>
    </div>
</main>

<?php
include_once 'includes/footer.php';
?>