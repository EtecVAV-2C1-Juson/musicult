<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'includes/header.php';
?>

<section class="result-hero">
    <div class="result-hero-content">
        <div class="result-title-group">
            <h1>Resultado final</h1>
        </div>
        <p>Confira abaixo o seu desempenho geral no simulado e veja em quais aulas você mandou bem ou precisa dar uma revisada.</p>
    </div>
</section>

<main class="result-main">
    <div class="result-container">
        
        <div class="result-card">
            
            <div class="final-score-box">
                <span class="score-label">Nota final:</span>
                <span class="score-value"></span>
            </div>

            <hr class="result-divider">

            <div class="error-analysis-box">
                <h2>Análise de onde você errou:</h2>
                
                <div class="analysis-list">
                    
                </div>
            </div>

        </div>

        <div class="result-actions">
            <a href="simulado.php" class="btn-outline-dark">Refazer Simulado</a>
            <a href="curso.php" class="btn-primary-dark">Revisar Aulas &gt;</a>
        </div>

    </div>
</main>

<?php
include_once 'includes/footer.php';
?>