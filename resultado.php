<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'config/conexao.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST' || empty($_POST['resposta'])) {
    header("Location: simulado.php");
    exit;
}
$respostas_usuario = isset($_POST['resposta']) ? $_POST['resposta'] : [];

$acertos = 0;
$total_respondidas = count($respostas_usuario);
$estatisticas_aulas = [];

foreach ($respostas_usuario as $id_questao => $escolha) {
    $stmt = $pdo->prepare("SELECT q.resposta_correta, a.id as aula_id, a.artista FROM questoes q JOIN aulas a ON q.aula_id = a.id WHERE q.id = ?");
    $stmt->execute([$id_questao]);
    $questao = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($questao) {
        $aula_id = $questao['aula_id'];
        $artista = $questao['artista'];
        $correta = strtoupper(trim($questao['resposta_correta']));
        $escolha_usuario = strtoupper(trim($escolha));
        if (!isset($estatisticas_aulas[$aula_id])) {
            $estatisticas_aulas[$aula_id] = [
                'artista' => $artista,
                'total' => 0,
                'acertos' => 0
            ];
        }
        $estatisticas_aulas[$aula_id]['total']++;

        if ($correta === $escolha_usuario) {
            $acertos++;
            $estatisticas_aulas[$aula_id]['acertos']++;
        }
    }
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
                <span class="score-value"><?php echo $acertos; ?> / <?php echo $total_respondidas; ?></span>
            </div>

            <hr class="result-divider">

            <div class="error-analysis-box">
                <h2>Desempenho por aula:</h2>
                
                <div class="analysis-list">
                    <?php if (!empty($estatisticas_aulas)): ?>
                        <?php foreach ($estatisticas_aulas as $estatistica): ?>
                            <div class="analysis-item">
                                <span>Perguntas da aula de <strong><?php echo htmlspecialchars($estatistica['artista'], ENT_QUOTES, 'UTF-8'); ?></strong>:</span>
                                <span><strong><?php echo $estatistica['acertos']; ?> / <?php echo $estatistica['total']; ?></strong></span>
                            </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <p>Nenhum dado de resultado encontrado.</p>
                    <?php endif; ?>
                    
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