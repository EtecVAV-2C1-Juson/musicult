<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'config/conexao.php';
$aula_id = isset($_GET['id']) ? (int) $_GET['id'] : 1;

$stmtAula = $pdo->prepare("SELECT * FROM aulas WHERE id = ?");
$stmtAula->execute([$aula_id]);
$aula = $stmtAula->fetch(PDO::FETCH_ASSOC);

if (!$aula) {
    header("Location: curso.php");
    exit;
}

$stmtSecoes = $pdo->prepare("SELECT * FROM secoes WHERE aula_id = ? ORDER BY ordem ASC");
$stmtSecoes->execute([$aula_id]);
$secoes = $stmtSecoes->fetchAll(PDO::FETCH_ASSOC);

include_once 'includes/header.php';
?>


<section class="lesson-hero">
    <div class="lesson-hero-container">
        <a href="curso.php" class="back-link">&lt; Voltar para todas as aulas</a>
        
        <div class="lesson-tag">AULA - <?php echo htmlspecialchars($aula['tema'], ENT_QUOTES, 'UTF-8'); ?></div>
        <h1><?php echo htmlspecialchars($aula['artista'], ENT_QUOTES, 'UTF-8'); ?></h1>
        <p class="lesson-summary">
            <?php echo htmlspecialchars($aula['conteudo'], ENT_QUOTES, 'UTF-8'); ?>
        </p>

        <div class="lesson-meta-box">
            <div class="meta-item">
                <span class="meta-label">Objetivo da aula</span>
                <span class="meta-value">Compreender a trajetória, o contexto social e o impacto artístico de <?php echo htmlspecialchars($aula['artista'], ENT_QUOTES, 'UTF-8'); ?>.</span>
            </div>
            <div class="meta-divider"></div>
            <div class="meta-item">
                <span class="meta-label">Duração de leitura</span>
                <span class="meta-value">~ 4 minutos</span>
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
                <?php foreach ($secoes as $index => $secao): ?>
                    <?php $numFormatado = str_pad($index + 1, 2, '0', STR_PAD_LEFT); ?>
                    <a href="#topico-<?php echo $index + 1; ?>" class="toc-item">
                        <span class="toc-number"><?php echo $numFormatado; ?></span>
                        <span class="toc-title"><?php echo htmlspecialchars($secao['subtitulo'], ENT_QUOTES, 'UTF-8'); ?></span>
                    </a>
                <?php endforeach; ?>
            </div>
        </aside>

        <article class="lesson-content">
            
        <?php foreach ($secoes as $index => $secao): ?>
            <section id="topico-<?php echo $index + 1; ?>" class="lesson-topic-block">
                <div class="topic-header">
                    <span class="topic-badge">Tópico <?php echo $index + 1; ?></span>
                    <h2><?php echo htmlspecialchars($secao['subtitulo'], ENT_QUOTES, 'UTF-8'); ?></h2>
                </div>
                <p> <?php echo nl2br(htmlspecialchars($secao['conteudo'], ENT_QUOTES, 'UTF-8')); ?></p>
            </section>
            <?php endforeach; ?>

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