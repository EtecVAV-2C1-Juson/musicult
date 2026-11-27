<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'includes/header.php';
?>

<section class="simulado-hero">
    <div class="simulado-hero-content">
        <h1>Simulado sobre música</h1>
        <p>Chegou a hora de testar tudo o que você aprendeu ao longo da nossa jornada de aulas e ver como está o seu conhecimento musical.</p>
    </div>
</section>

<main class="simulado-main">
    <div class="simulado-container">
        
        <div class="simulado-instructions">
            <h2>Instruções para o simulado</h2>
            <p>
                Leia cada enunciado com calma, analise as alternativas com atenção e escolha a opção que considerar correta. 
                Assim que terminar, envie o formulário para conferir o seu desempenho geral. Boa sorte!
            </p>
        </div>

        <form action="processar_simulado.php" method="POST" class="simulado-form">
            
                <?php
                
                 ?>

            <div class="simulado-actions">
                <button type="submit" class="btn-submit-simulado">Enviar Respostas e Ver Resultado</button>
            </div>

        </form>

    </div>
</main>

<?php
include_once 'includes/footer.php';
?>