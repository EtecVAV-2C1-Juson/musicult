<?php
// Página de listagem de todas as aulas
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
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
            
            <div class="artist-card" data-name="beyoncé representatividade cultura negra movimentos sociais">
                <div class="card-tag">Representatividade</div>
                <h3>Beyoncé</h3>
                <p>A aula aborda a representatividade, a força da cultura negra e o papel central dos movimentos sociais na obra dela.</p>
                <a href="aula.php?artista=beyonce" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="michael jackson influência cultural transformação da sociedade">
                <div class="card-tag">Influência Cultural</div>
                <h3>Michael Jackson</h3>
                <p>Uma análise profunda sobre como sua arte influenciou culturalmente e ajudou a transformar a sociedade do seu tempo.</p>
                <a href="aula.php?artista=michael-jackson" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="laufey identidade cultural referências históricas">
                <div class="card-tag">Identidade Cultural</div>
                <h3>Laufey</h3>
                <p>Explorando a identidade cultural única da artista e como ela resgata referências históricas para o público jovem atual.</p>
                <a href="aula.php?artista=laufey" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="tyler the creator construção da identidade artística">
                <div class="card-tag">Identidade Artística</div>
                <h3>Tyler, The Creator</h3>
                <p>Como ele constrói sua identidade artística de forma autêntica, reinventando sonoridades e estética visual a cada álbum.</p>
                <a href="aula.php?artista=tyler-the-creator" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="arctic monkeys evolução da indústria musical e internet">
                <div class="card-tag">Indústria e Internet</div>
                <h3>Arctic Monkeys</h3>
                <p>A trajetória da banda refletindo a evolução da indústria musical e o papel impulsionador da internet nos anos 2000.</p>
                <a href="aula.php?artista=arctic-monkeys" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="whitney houston presença feminina na indústria musical">
                <div class="card-tag">Voz e Presença</div>
                <h3>Whitney Houston</h3>
                <p>Um olhar sobre a monumental presença feminina na indústria musical e os recordes que quebraram barreiras.</p>
                <a href="aula.php?artista=whitney-houston" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="raye autonomia artística e direitos dos artistas">
                <div class="card-tag">Autonomia Artística</div>
                <h3>RAYE</h3>
                <p>A luta inspiradora pela autonomia artística e a discussão essencial sobre os direitos dos artistas na era moderna.</p>
                <a href="aula.php?artista=raye" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="queen influência e legado artístico">
                <div class="card-tag">Legado</div>
                <h3>QUEEN</h3>
                <p>A imensa influência e o legado artístico deixado por uma das maiores bandas de rock de todos os tempos.</p>
                <a href="aula.php?artista=queen" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="britney spears fama exposição midiática e pressão pública">
                <div class="card-tag">Fama e Mídia</div>
                <h3>Britney Spears</h3>
                <p>Os reflexos da fama desenfreada, a pesada exposição midiática e a intensa pressão pública sobre as estrelas pop.</p>
                <a href="aula.php?artista=britney-spears" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="david bowie transformação artística e experimentação">
                <div class="card-tag">Experimentação</div>
                <h3>David Bowie</h3>
                <p>A eterna capacidade de transformação artística e a coragem na experimentação sonora e visual.</p>
                <a href="aula.php?artista=david-bowie" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="madonna quebra de padrões sociais e liberdade de expressão">
                <div class="card-tag">Liberdade</div>
                <h3>Madonna</h3>
                <p>Como suas provocações desafiaram e quebraram padrões sociais, defendendo unhas e dentes a liberdade de expressão.</p>
                <a href="aula.php?artista=madonna" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="cazuza crítica social e liberdade de expressão">
                <div class="card-tag">Crítica Social</div>
                <h3>Cazuza</h3>
                <p>A poesia urbana afiada, a forte crítica social e a busca incansável pela liberdade de expressão no Brasil.</p>
                <a href="aula.php?artista=cazuza" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="rita lee protagonismo feminino na música brasileira">
                <div class="card-tag">Rock Brasileiro</div>
                <h3>Rita Lee</h3>
                <p>O pioneirismo e o forte protagonismo feminino na consolidação e na irreverência da música brasileira.</p>
                <a href="aula.php?artista=rita-lee" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

            <div class="artist-card" data-name="seu jorge cultura e identidade brasileira">
                <div class="card-tag">Cultura Nacional</div>
                <h3>Seu Jorge</h3>
                <p>A valorização das raízes, da cultura e da forte identidade brasileira através de sua voz e composições.</p>
                <a href="aula.php?artista=seu-jorge" class="btn-card">Acessar aula <span class="arrow">&gt;</span></a>
            </div>

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