<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once 'config/conexao.php';
$sql = "SELECT * FROM aulas ORDER BY id ASC";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$aulas = $stmt->fetchAll(PDO::FETCH_ASSOC);

include_once 'includes/header.php';
?>

<section class="courses-hero">
    <div class="courses-hero-content">
        <h1>Confira nossas aulas</h1>
        <p>Aqui você vai encontrar todas as nossas aulas disponíveis. Cada tema foi pensado para conectar a música com a história, a sociedade e o impacto de grandes ícones culturais.</p>
        
        <div class="search-bar-container">
            <input type="text" id="searchArtist" placeholder="Pesquisar por artista ou tema..." onkeyup="filterArtists()">
        </div>
    </div>
</section>

<section class="artists-catalog-section">
    <div class="artists-catalog-container">
        <h2>Escolha por onde começar</h2>
        
        <div class="artists-grid" id="artistsGrid">
            
            <?php if (!empty($aulas)): ?>

                <?php foreach ($aulas as $aula): ?>

                    <?php

                    $artista = htmlspecialchars($aula['artista'], ENT_QUOTES, 'UTF-8');

                    $tema = htmlspecialchars($aula['tema'], ENT_QUOTES, 'UTF-8');

                    $descricao = strip_tags($aula['conteudo']);
                    $descricao = trim($descricao);
                    $descricao = mb_strimwidth($descricao, 0, 160, '...', 'UTF-8');

                    $pesquisa = strtolower(
                        $aula['artista'] . ' ' .
                        $aula['tema'] . ' ' .
                        $aula['conteudo']
                    );
                    ?>

                    <div class="artist-card" data-name="<?php echo htmlspecialchars($pesquisa, ENT_QUOTES, 'UTF-8'); ?>">

                        <div class="card-tag">
                            <?php echo $tema; ?>
                        </div>

                        <h3>
                            <?php echo $artista; ?>
                        </h3>

                        <p>
                            <?php echo htmlspecialchars($descricao, ENT_QUOTES, 'UTF-8'); ?>
                        </p>

                        <a href="aula.php?id=<?php echo (int) $aula['id']; ?>" class="btn-card">
                            Acessar aula <span class="arrow">&gt;</span>
                        </a>

                    </div>

                <?php endforeach; ?>

            <?php else: ?>

                <p class="no-courses">
                    Nenhuma aula foi cadastrada.
                </p>

            <?php endif; ?>

        </div>
    </div>
</section>

<script>
function filterArtists() {
    let input = document.getElementById('searchArtist').value.toLowerCase();
    let cards = document.getElementsByClassName('artist-card');

    for (let i = 0; i < cards.length; i++) {
        let text = cards[i].getAttribute('data-name');
        if (text.includes(input)) {
            cards[i].style.display = "";
        } else {
            cards[i].style.display = "none";
        }
    }
}
</script>

<?php
include_once 'includes/footer.php';
?>