<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'config/conexao.php';
$stmt = $pdo->prepare("SELECT * FROM questoes ORDER BY RAND() LIMIT 10");
$stmt->execute();
$questoes = $stmt->fetchAll(PDO::FETCH_ASSOC);
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

        <form action="resultado.php" method="POST" class="simulado-form">
            
                <?php if (!empty($questoes)): ?>
                <?php foreach ($questoes as $index => $q): ?>
                    <div class="quiz-question-card">
                        <h3><?php echo ($index + 1) . '. ' . htmlspecialchars($q['enunciado'], ENT_QUOTES, 'UTF-8'); ?></h3>
                        
                        <div class="quiz-options">
                            <?php 
                            $alternativas = [
                                'a' => $q['alternativa_a'],
                                'b' => $q['alternativa_b'],
                                'c' => $q['alternativa_c'],
                                'd' => $q['alternativa_d'],
                                'e' => $q['alternativa_e']
                            ];
                            
                            foreach ($alternativas as $letra => $texto): 
                                if (!empty($texto)):
                                    $letraMaiuscula = strtoupper($letra);
                            ?>
                                <label class="option-label">
                                    <input type="radio" name="resposta[<?php echo $q['id']; ?>]" value="<?php echo $letraMaiuscula; ?>" required>
                                    <span><?php echo $letraMaiuscula . ') ' . htmlspecialchars($texto, ENT_QUOTES, 'UTF-8'); ?></span>
                                </label>
                            <?php 
                                endif;
                            endforeach; 
                            ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="backend-slot-placeholder">
                    <p>Nenhuma questão cadastrada no momento.</p>
                </div>
            <?php endif; ?>

            <div class="simulado-actions">
                <button type="submit" class="btn-submit-simulado">Enviar Respostas e Ver Resultado</button>
            </div>

        </form>

    </div>
</main>

<?php
include_once 'includes/footer.php';
?>