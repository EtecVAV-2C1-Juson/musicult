-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/11/2026 às 05:44
-- Versão do servidor: 10.11.19-MariaDB
-- Versão do PHP: 8.3.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_curso_musica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `artista` varchar(100) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aulas`
--

INSERT INTO `aulas` (`id`, `artista`, `tema`, `imagem`) VALUES
(1, 'Beyoncé', 'Representatividade, cultura negra e movimentos sociais', 'assets/img/artistas/beyonce.jpg'),
(2, 'Michael Jackson', 'Influência cultural e transformação da sociedade', 'assets/img/artistas/michael.jpg'),
(3, 'Laufey', 'Identidade cultural e referências históricas', 'assets/img/artistas/laufey.jpg'),
(4, 'Tyler, The Creator', 'Construção da identidade artística', 'assets/img/artistas/tyler.jpg'),
(5, 'Arctic Monkeys', 'Evolução da indústria musical e internet', 'assets/img/artistas/arctic_monkeys.jpg'),
(6, 'Whitney Houston', 'Presença feminina na indústria musical', 'assets/img/artistas/whitney.jpg'),
(7, 'RAYE', 'Autonomia artística e direitos dos artistas', 'assets/img/artistas/raye.jpg'),
(8, 'Queen', 'Influência e legado artístico', 'assets/img/artistas/queen.jpg'),
(9, 'Britney Spears', 'Fama, exposição midiática e pressão pública', 'assets/img/artistas/britney.jpg'),
(10, 'David Bowie', 'Transformação artística e experimentação', 'assets/img/artistas/bowie.jpg'),
(11, 'Madonna', 'Quebra de padrões sociais e liberdade de expressão', 'assets/img/artistas/madonna.jpg'),
(12, 'Cazuza', 'Crítica social e liberdade de expressão', 'assets/img/artistas/cazuza.jpg'),
(13, 'Rita Lee', 'Protagonismo feminino na música brasileira', 'assets/img/artistas/rita_lee.jpg'),
(14, 'Seu Jorge', 'Cultura e identidade brasileira', 'assets/img/artistas/seu_jorge.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `questoes`
--

CREATE TABLE `questoes` (
  `id` int(11) NOT NULL,
  `aula_id` int(11) NOT NULL,
  `enunciado` text NOT NULL,
  `alternativa_a` varchar(255) NOT NULL,
  `alternativa_b` varchar(255) NOT NULL,
  `alternativa_c` varchar(255) NOT NULL,
  `alternativa_d` varchar(255) NOT NULL,
  `alternativa_e` varchar(255) NOT NULL,
  `resposta_correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `questoes`
--

INSERT INTO `questoes` (`id`, `aula_id`, `enunciado`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `alternativa_e`, `resposta_correta`) VALUES
(1, 1, 'Qual álbum visual de Beyoncé é amplamente reconhecido por exaltar a história, a estética e a resistência da cultura negra e do feminismo negro?', 'Thriller', 'Lemonade', 'Future Nostalgia', '1989', 'Anti', 'B'),
(2, 1, 'Além de seu impacto musical global, qual temática social é frequentemente pautada por Beyoncé em suas obras e projetos públicos?', 'A extinção de animais silvestres', 'A exploração espacial', 'Justicia racial e representatividade', 'A substituição do vinil pelo CD', 'O mercado de criptomoedas', 'C'),
(3, 2, 'Por qual título Michael Jackson ficou mundialmente conhecido na história da música?', 'O Príncipe do Rock', 'O Rei do Pop', 'O Dueto do Jazz', 'O Mestre do Blues', 'O Imperador da Eletrônica', 'B'),
(4, 2, 'De que maneira a arte de Michael Jackson quebrou barreiras históricas na mídia de massa durante os anos 1980?', 'Ao recusar participações em programas de TV', 'Ao estrear na programação da MTV e quebrar barreiras raciais', 'Ao lançar apenas músicas instrumentais', 'Ao proibir videoclipes em sua carreira', 'Ao gravar exclusivamente em estúdios móveis', 'B'),
(5, 3, 'Quais gêneros musicais tradicionais a cantora Laufey resgata e moderniza para as novas gerações?', 'Heavy Metal e Hardcore', 'Jazz clássico e bossanova', 'Funk carioca e pagode', 'Dubstep e Techno', 'Country e Sertanejo Universitário', 'B'),
(6, 3, 'Através de qual meio principal Laufey conseguiu aproximar gêneros musicais atemporais do público jovem?', 'Apenas jornais impressos', 'Redes sociais e plataformas digitais', 'Rádios AM tradicionais', 'Cartas postais e vinis colecionáveis', 'Panfletos físicos distribuídos em ruas', 'B'),
(7, 4, 'Com qual coletivo underground Tyler, The Creator iniciou sua jornada no cenário do hip-hop?', 'Wu-Tang Clan', 'Odd Future', 'A Tribe Called Quest', 'Gorillaz', 'Brockhampton', 'B'),
(8, 4, 'Como a trajetória musical de Tyler, The Creator evoluiu ao longo dos anos?', 'Manteve exatamente o mesmo estilo de rap cru do início', 'Transitou do rap cru para sonoridades sofisticadas como soul, jazz e funk', 'Abandonou completamente a música para virar pintor', 'Passou a gravar apenas músicas clássicas para piano', 'Deixou de compor e tornou-se produtor de cinema mudo', 'B'),
(9, 5, 'Qual fator impulsionou o sucesso mundial estrondoso dos Arctic Monkeys no início dos anos 2000?', 'Contratos exclusivos com emissoras de rádio estatais', 'O compartilhamento gratuito de músicas na internet e redes sociais', 'Campanhas publicitárias milionárias em jornais de papel', 'O patrocínio direto de grandes marcas de refrigerante', 'A trilha sonora de filmes de Hollywood', 'B'),
(10, 5, 'Como a sonoridade dos Arctic Monkeys se comportou ao longo de sua discografia?', 'Permaneceu idêntica ao indie rock acelerado de estreia', 'Evoluiu do indie rock cru para texturas sonoras complexas e psicodélicas', 'Migrou totalmente para o sertanejo acústico', 'Tornou-se um grupo exclusivo de música eletrônica dance', 'Passou a gravar apenas óperas tradicionais italianas', 'B'),
(11, 6, 'Qual característica técnica e artística marcou profundamente a carreira de Whitney Houston?', 'Sua habilidade como baterista de jazz', 'Sua extensão vocal potente e execuções vocais perfeitas', 'Seu estilo de rap improvisado (freestyle)', 'O uso constante de distorção vocal (screaming)', 'Sua atuação exclusiva em musicais da Broadway', 'B'),
(12, 6, 'Qual foi um dos grandes marcos históricos interpretados por Whitney Houston em eventos públicos de massa?', 'A abertura dos Jogos Olímpicos de Inverno com breakdance', 'A interpretação marcante do hino nacional americano no Super Bowl', 'O show de intervalo da Copa do Mundo de 1994', 'O primeiro concerto transmitido via marte', 'A direção do festival de Woodstock', 'B'),
(13, 7, 'Qual foi o principal motivo que levou a cantora britânica RAYE a romper com as grandes gravadoras tradicionais?', 'A falta de interesse do público em suas músicas', 'Contratos engessados que a impediam de lançar seu álbum de estreia', 'O desejo de se aposentar dos palcos aos 25 anos', 'A proibição de cantar em língua inglesa', 'A mudança obrigatória para o gênero clássico', 'B'),
(14, 7, 'O que a luta pública de RAYE ajudou a debater no ecossistema musical contemporâneo?', 'A importação de instrumentos musicais', 'Os direitos autorais e a autonomia criativa dos artistas', 'A velocidade de download de arquivos MP3', 'O preço dos ingressos para festivais de rock', 'A obrigatoriedade de tocar violão acústico', 'B'),
(15, 8, 'Quem foi o vocalista principal e líder magnético da banda britânica Queen?', 'David Bowie', 'Freddie Mercury', 'Elton John', 'Mick Jagger', 'Robert Plant', 'B'),
(16, 8, 'Qual combinação de estilos sonoros ajudou a consagrar a inovação musical do Queen?', 'Rock arena, ópera e teatralidade', 'Samba raiz e pagode romântico', 'Forró eletrônico e tecnobrega', 'Hip-hop underground e lo-fi', 'Bossa nova e choro tradicional', 'A'),
(17, 9, 'Por qual alcunha artística Britney Spears ficou mundialmente conhecida no final dos anos 1990 e início dos 2000?', 'A Rainha do Country', 'A Princesa do Pop', 'A Dama do Jazz', 'A Deusa do Punk', 'A Musa do Indie', 'B'),
(18, 9, 'Além de seus grandes sucessos musicais, qual debate importante sua trajetória traumática trouxe à tona na mídia?', 'A proibição do uso de sintetizadores', 'Os impactos da fama precoce, tutela legal e saúde mental', 'A escassez de CDs no mercado global', 'As regras de direitos autorais de partituras antigas', 'O fim das apresentações ao vivo em estádios', 'B'),
(19, 10, 'Qual apelido foi amplamente atribuído a David Bowie devido à sua constante reinvenção visual e sonora?', 'O Rei do Reggae', 'O Camaleão do Rock', 'O Bruxo da Guitarra', 'O Monarca da Disco Music', 'O Mestre das Cordas', 'B'),
(20, 10, 'Qual recurso artístico David Bowie utilizava frequentemente para explorar diferentes personas em seus álbuns?', 'A criação de alter egos teatrais marcantes', 'A utilização exclusiva de fantoches em seus shows', 'A recusa total a gravar videoclipes', 'A proibição de entrevistas com jornalistas', 'A troca diária de nome artístico na identidade', 'A'),
(21, 11, 'Como Madonna construiu sua carreira de enorme influência na cultura pop global?', 'Seguindo rigorosamente todos os padrões tradicionais da época', 'Desafiando tabus sobre sexualidade, religião e papéis de gênero', 'Gravando apenas músicas infantis e educativas', 'Recusando-se a aparecer em capas de revistas', 'Limitando suas apresentações a teatros fechados na Europa', 'B'),
(22, 11, 'Qual causa social e de direitos civis Madonna defendeu incansavelmente ao longo de sua trajetória?', 'A taxação de instrumentos musicais importados', 'os direitos da comunidade LGBTQIA+ e a liberdade de expressão', 'A proibição da internet comercial', 'O retorno exclusivo ao formato de vinil', 'A extinção de premiações de música', 'B'),
(23, 12, 'Em qual contexto histórico e político Cazuza eternizou suas canções de forte crítica social e desejo de liberdade?', 'O período do Império no Brasil', 'O processo de redemocratização do Brasil', 'A proclamação da República', 'A fundação de Brasília nos anos 1960', 'O movimento modernista de 1922', 'B'),
(24, 12, 'Antes de seguir em uma bem-sucedida carreira solo, Cazuza destacou-se como vocalista de qual banda de rock brasileiro?', 'Legião Urbana', 'Barão Vermelho', 'Titãs', 'Capital Inicial', 'Paralamas do Sucesso', 'B'),
(25, 13, 'Qual título carinhoso foi atribuído a Rita Lee no cenário da música nacional?', 'A Rainha do Rock Brasileiro', 'A Musa da Bossa Nova', 'A Dama do Samba', 'A Imperatriz do Funk', 'A Voz do Sertão', 'A'),
(26, 13, 'De que maneira Rita Lee revolucionou o papel feminino na música brasileira durante uma época conservadora?', 'Ao adotar um estilo rígido e formal de vestimenta', 'Ao misturar ironia fina, leveza pop e comportamento transgressor', 'Ao recusar-se a compor suas próprias canções', 'Ao cantar exclusivamente em inglês', 'Ao liderar apenas corais sacros tradicionais', 'B'),
(27, 14, 'Quais tradições musicais Seu Jorge une de maneira brilhante em suas composições e interpretações?', 'Samba de raiz, soul music, funk e MPB', 'Heavy metal e música clássica barroca', 'Country americano e música folclórica nórdica', 'Techno europeu e música ambiente', 'K-pop e rap industrial', 'A'),
(28, 14, 'O que as letras e a identidade artística de Seu Jorge costumam valorizar fortemente?', 'A vida aristocrática em castelos europeus', 'As raízes afro-brasileiras e a dignidade das periferias', 'A história da navegação marítima medieval', 'A teoria quântica aplicada à acústica', 'O mercado financeiro internacional', 'B'),
(29, 1, 'O que Beyoncé utilizou para revolucionar a indústria e elevar o padrão de suas entregas artísticas?', 'Álbuns visuais e turnês grandiosas', 'A gravação exclusiva em fitas cassete', 'O abandono total de videoclipes', 'A exclusão de parcerias musicais', 'Apenas singles lançados em vinil', 'A'),
(30, 2, 'Qual passo icônico de dança foi popularizado por Michael Jackson e marcou a história da cultura pop?', 'O Passinho do Brega', 'O Moonwalk', 'A Valsa Vienense', 'O Catwalk', 'O Tango Urbano', 'B'),
(31, 3, 'Quais instrumentos de formação clássica influenciam diretamente os arranjos refinados de Laufey?', 'Guitarra elétrica e bateria pesada', 'Violoncelo e piano clássico', 'Trompete e saxofone tenor', 'Acordeon e zabumba', 'Sintetizador analógico e sampler', 'B'),
(32, 4, 'Além da música, em qual outra área criativa Tyler, The Creator expandiu sua marca e influência comercial?', 'Na indústria automobilística pesada', 'Na moda com sua marca Golf Wang', 'Na direção de filmes mudos clássicos', 'Na literatura de romances policiais', 'Na fabricação de instrumentos de sopro', 'B'),
(33, 5, 'O que caracteriza fortemente as composições letrísticas de Alex Turner nos Arctic Monkeys?', 'Histórias de ficção científica espacial', 'O humor ácido e o retrato detalhado da vida noturna britânica', 'Temas voltados exclusivamente para política medieval', 'Poemas épicos em latim arcaico', 'Letras instrumentais sem nenhuma palavra', 'B'),
(34, 6, 'Qual famoso filme de grande sucesso de bilheteria contou com uma atuação marcante de Whitney Houston nos cinemas?', 'Titanic', 'O Guarda-Costas', 'Matrix', 'Jurassic Park', 'Gladiador', 'B'),
(35, 7, 'O triunfo histórico de RAYE ao conquistar diversas vitórias em uma única edição ocorreu em qual premiação musical?', 'Grammy Awards', 'BRIT Awards', 'Billboard Music Awards', 'MTV Video Music Awards', 'American Music Awards', 'B'),
(36, 8, 'Qual apresentação histórica do Queen em 1985 é considerada uma das maiores performances de rock ao vivo de todos os tempos?', 'O show de Copacabana', 'A apresentação no festival Live Aid', 'O concerto no Rock in Rio de 1991', 'A turnê de despedida em Tóquio', 'O show beneficente em Paris', 'B'),
(37, 9, 'O que as performances e coreografias de Britney Spears nos anos 2000 ajudaram a definir na cultura pop?', 'O padrão estético para o estilo de dança country', 'O formato padrão das apresentações de grandes divas pop', 'A proibição de palcos circulares', 'O uso exclusivo de bandas de rock pesado', 'A extinção de dançarinos de apoio', 'B'),
(38, 10, 'Como David Bowie desafiou abertamente as barreiras tradicionais de gênero em sua carreira artística?', 'Através da exploração da androginia e figurinos teatrais', 'Recusando-se a usar roupas coloridas nos palcos', 'Gravando apenas músicas instrumentais acústicas', 'Adotando um estilo de vestimenta formal corporativo', 'Proibindo o uso de maquiagem em suas turnês', 'A'),
(39, 11, 'Qual postura administrativa marcou a carreira de Madonna ao longo dos anos na indústria musical?', 'O controle absoluto sobre sua imagem comercial e direções criativas', 'A entrega total dos direitos de suas músicas para gravadoras', 'A recusa em participar de decisões empresariais', 'A terceirização completa de sua identidade visual', 'A dependência de empresários externos para lançamentos', 'A'),
(40, 12, 'O que aconteceu com a obra poética de Cazuza após a sua partida precoce?', 'Foi esquecida pelo público e pela mídia especializada', 'Continuou ecoando fortemente e sendo reinterpretada por novas gerações', 'Foi proibida de ser veiculada em rádios brasileiras', 'Foi convertida inteiramente para o idioma inglês', 'Foi substituída por partituras clássicas', 'B'),
(41, 13, 'De que maneira Rita Lee costumava tratar temas profundos e discussões políticas em sua trajetória?', 'Utilizando o bom humor, a leveza e uma irreverência única', 'Através de discursos formais e solenes na televisão', 'Escrevendo livros acadêmicos de filosofia pura', 'Adotando uma postura rígida e dramática nos palcos', 'Recusando-se a abordar qualquer assunto social', 'A'),
(42, 14, 'Além de sua carreira de enorme sucesso na música, qual outro meio artístico projetou internacionalmente o talento de Seu Jorge?', 'O teatro de ópera tradicional europeu', 'Atuações marcantes no cinema, como em \"Cidade de Deus\"', 'A direção de programas de auditório na TV', 'A dublagem de desenhos animados clássicos', 'A produção de novelas de época', 'B');

-- --------------------------------------------------------

--
-- Estrutura para tabela `secoes`
--

CREATE TABLE `secoes` (
  `id` int(11) NOT NULL,
  `aula_id` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `secoes`
--

INSERT INTO `secoes` (`id`, `aula_id`, `ordem`, `subtitulo`, `conteudo`) VALUES
(1, 1, 1, 'Introdução e Impacto Cultural', 'Beyoncé Knowles-Carter é uma das artistas mais influentes da música pop atual, mas sua importância vai muito além de suas músicas e apresentações. Ao longo de sua carreira, ela passou a utilizar sua visibilidade para abordar questões culturais e sociais, principalmente relacionadas à história e à valorização da população negra. Em trabalhos como Lemonade e Renaissance, é possível perceber referências à ancestralidade, à cultura afro-americana e às diferentes formas de expressão artística. Suas produções também chamam atenção pela maneira como misturam música, dança, figurino e elementos visuais, fazendo com que cada lançamento tenha uma identidade própria.'),
(2, 1, 2, 'Representatividade e Legado', 'A representatividade é um dos pontos mais presentes na trajetória de Beyoncé. Em suas apresentações e produções, a cantora procura destacar referências da cultura negra, valorizando suas origens e mostrando a importância de reconhecer a história de diferentes comunidades. No álbum Lemonade, por exemplo, são apresentadas questões relacionadas à identidade, à experiência das mulheres negras e às dificuldades enfrentadas por elas na sociedade. Além disso, sua influência também aparece em movimentos culturais e debates sobre igualdade racial e feminismo. Dessa forma, seu trabalho mostra como artistas podem utilizar a própria visibilidade para ampliar discussões importantes.'),
(3, 2, 1, 'A Realeza do Pop', 'Michael Jackson ficou conhecido mundialmente como o Rei do Pop e se tornou uma das figuras mais importantes da história da música. Sua carreira contribuiu para transformar a maneira como os artistas produziam músicas, dançavam e se apresentavam para o público. Um dos exemplos mais conhecidos dessa influência são seus videoclipes, que passaram a apresentar produções mais elaboradas, com histórias, coreografias e elementos cinematográficos. O videoclipe de Thriller é um dos maiores exemplos disso. Além de seu sucesso musical, Michael também teve importância na presença de artistas negros em grandes espaços da indústria, ajudando a ampliar sua visibilidade em veículos como a MTV.'),
(4, 2, 2, 'Causas Humanitárias', 'Além de sua influência musical, Michael Jackson também ficou conhecido por participar de campanhas e projetos voltados para causas humanitárias. Ao longo de sua carreira, ele apoiou iniciativas relacionadas ao combate à fome, à pobreza e aos problemas enfrentados por crianças em diferentes partes do mundo. Um exemplo dessa preocupação aparece na música We Are the World, composta por Michael Jackson e Lionel Richie, que reuniu diversos artistas em uma campanha de arrecadação para ajudar pessoas afetadas pela fome na África. Sua trajetória demonstra como a popularidade de um artista pode ser utilizada para chamar atenção para problemas sociais e incentivar ações coletivas.'),
(5, 3, 1, 'Renovação Atemporal', 'Laufey é uma cantora, compositora e multi-instrumentista islandesa-chinesa que ganhou destaque por trazer elementos de estilos musicais mais antigos para o público atual. Suas músicas apresentam influências do jazz, da música clássica e da bossa nova, utilizando instrumentos e arranjos que lembram produções de outras épocas. Mesmo com essas referências, seu trabalho não fica preso ao passado, pois mistura essas características com uma produção atual e uma linguagem que se aproxima das novas gerações. Esse interesse por sonoridades antigas também mostra que estilos musicais podem continuar presentes e conquistar novos públicos mesmo depois de muitos anos.'),
(6, 3, 2, 'Identidade e Era Digital', 'A trajetória de Laufey também mostra como a identidade cultural pode aparecer na música de diferentes maneiras. Por ter crescido em contato com referências islandesas e chinesas, além de outras influências musicais, a artista apresenta uma relação com diferentes culturas em sua formação e em sua produção. Outro ponto interessante é a maneira como ela utiliza as redes sociais para divulgar seu trabalho, alcançando pessoas que talvez não tivessem contato com o jazz e outros estilos tradicionais. Suas músicas também abordam sentimentos e situações comuns, como relacionamentos, inseguranças e nostalgia. Assim, Laufey consegue aproximar referências antigas da realidade de um público mais jovem.'),
(7, 4, 1, 'Reinvenção Contínua', 'Tyler, The Creator, nome artístico de Tyler Gregory Okonma, é um rapper, produtor musical e diretor criativo conhecido por sua maneira diferente de desenvolver seus trabalhos. Ele começou a ganhar reconhecimento no cenário musical como integrante do coletivo Odd Future, que ficou conhecido por suas produções independentes e por uma estética bastante própria. Com o passar dos anos, Tyler foi modificando sua maneira de produzir músicas e de se apresentar ao público, mostrando que sua identidade artística não precisava permanecer sempre igual. Essa capacidade de experimentar e mudar de direção se tornou uma das características mais marcantes de sua carreira.'),
(8, 4, 2, 'Universos Visuais', 'Uma das características mais interessantes do trabalho de Tyler é a criação de universos visuais que acompanham seus álbuns. Além das músicas, ele participa da elaboração de capas, figurinos, cenários e conceitos que ajudam a construir a identidade de cada projeto. Em diferentes momentos da carreira, apresentou personagens e estilos visuais próprios, fazendo com que seus lançamentos tivessem características bem diferentes entre si. Musicalmente, também passou a explorar elementos de soul, jazz, funk e R&B, além do hip-hop. Essa liberdade de criação mostra como a identidade de um artista pode ser construída por diferentes formas de expressão, e não apenas pelo estilo musical.'),
(9, 5, 1, 'Fenômeno da Internet', 'Os Arctic Monkeys são uma banda britânica formada em Sheffield, no início dos anos 2000, que ganhou reconhecimento em um período de grandes mudanças na maneira como a música era divulgada. Antes de alcançarem o sucesso comercial, algumas de suas primeiras gravações começaram a circular pela internet, sendo compartilhadas entre fãs por meio de plataformas e comunidades digitais. Esse processo ajudou a banda a conquistar um público maior e chamou atenção para uma forma diferente de divulgação musical. O sucesso do grupo se tornou um exemplo de como a internet passou a modificar a relação entre artistas e ouvintes, permitindo que novos nomes ganhassem espaço sem depender exclusivamente dos meios tradicionais.'),
(10, 5, 2, 'Evolução Estilística', 'Com o passar dos anos, os Arctic Monkeys também demonstraram que uma banda pode modificar bastante seu estilo sem necessariamente perder sua identidade. No início, suas músicas apresentavam um indie rock mais acelerado, com letras sobre situações do cotidiano e a vida dos jovens. Já em trabalhos posteriores, como AM e Tranquility Base Hotel & Casino, é possível perceber mudanças na sonoridade, com influências de outros estilos e uma produção mais elaborada. Essas transformações mostram como os artistas podem experimentar novas ideias ao longo da carreira, acompanhando seus próprios interesses e evitando ficar presos a uma fórmula que já deu certo.'),
(11, 6, 1, 'Potência Vocal', 'Whitney Houston foi uma das cantoras de maior destaque da música internacional, ficando conhecida principalmente por sua potência vocal e pela maneira como interpretava suas canções. Sua carreira começou a ganhar grande reconhecimento durante a década de 1980, período em que suas músicas alcançaram posições importantes nas paradas de sucesso. Além de seu talento, sua presença na indústria musical também teve importância para outras mulheres negras que buscavam espaço no mercado internacional. Sua trajetória ajudou a mostrar que cantoras negras poderiam ocupar posições de grande destaque na música pop, alcançando públicos de diferentes países e gerações.'),
(12, 6, 2, 'Recordes e Legado', 'A carreira de Whitney Houston foi marcada por grandes recordes e apresentações que se tornaram referências na história da música. Entre seus trabalhos mais conhecidos está a interpretação de I Will Always Love You, que alcançou enorme sucesso e se tornou uma de suas músicas mais lembradas. Outro momento importante foi sua apresentação do hino nacional dos Estados Unidos durante o Super Bowl de 1991, que recebeu grande reconhecimento do público. Mesmo depois de sua morte, em 2012, suas interpretações continuam sendo utilizadas como referência por novos cantores. Seu legado demonstra como a qualidade vocal, a interpretação e a presença artística podem influenciar outras gerações.'),
(13, 7, 1, 'Resiliência e Independência', 'RAYE é uma cantora e compositora britânica que ganhou destaque não apenas por sua música, mas também pela maneira como decidiu conduzir a própria carreira. Durante vários anos, trabalhou com uma grande gravadora, mas enfrentou dificuldades para lançar seu primeiro álbum, mesmo já tendo escrito músicas para outros artistas e conquistado reconhecimento na indústria. Depois de tornar pública sua insatisfação com a situação, conseguiu encerrar seu contrato e passou a trabalhar de forma independente. Seu álbum de estreia, My 21st Century Blues, lançado em 2023, marcou uma nova fase de sua trajetória e mostrou a importância de ter mais liberdade para decidir os rumos do próprio trabalho.'),
(14, 7, 2, 'Direitos Autorais', 'A experiência de RAYE trouxe mais atenção para as dificuldades que alguns artistas enfrentam ao trabalhar com grandes gravadoras. Os contratos musicais podem envolver questões como direitos autorais, divisão dos lucros, controle sobre lançamentos e decisões relacionadas à própria produção. Em muitos casos, os artistas não possuem liberdade para decidir quando ou como suas músicas serão divulgadas, mesmo sendo responsáveis pela criação delas. A trajetória de RAYE ajudou a tornar essas questões mais conhecidas pelo público, mostrando que o sucesso de um artista também depende das condições de trabalho oferecidas pela indústria. Seu caso representa uma discussão importante sobre autonomia, reconhecimento profissional e direitos dos músicos.'),
(15, 8, 1, 'Teatralidade e Inovação', 'Queen foi uma das bandas britânicas mais importantes da história do rock, ficando conhecida pela mistura de diferentes estilos musicais e pela maneira teatral de realizar suas apresentações. Liderado pela presença marcante de Freddie Mercury, o grupo reuniu elementos do rock, da ópera, do hard rock e da música pop, criando composições que se tornaram reconhecidas mundialmente. Músicas como Bohemian Rhapsody demonstram essa mistura de estilos e a liberdade criativa presente em suas produções. Outro momento importante foi a apresentação no Live Aid, em 1985, que ficou conhecida pela forte conexão entre a banda e o público. Esses elementos ajudaram a construir a identidade do Queen e sua influência na música internacional.'),
(16, 8, 2, 'Conexão Emocional', 'O sucesso do Queen não ficou limitado ao período em que a banda estava no auge de sua carreira. Suas músicas continuam sendo ouvidas por diferentes gerações e aparecem em filmes, eventos, apresentações e produções culturais. Um exemplo é Bohemian Rhapsody, que permaneceu popular por muitos anos e ganhou ainda mais atenção com o lançamento do filme de mesmo nome, em 2018. A trajetória do grupo também mostra como a personalidade dos integrantes e a liberdade para experimentar podem contribuir para a construção de uma carreira duradoura. Mesmo depois de tantas mudanças na indústria musical, o Queen continua sendo uma referência para bandas e artistas de diferentes estilos.'),
(17, 9, 1, 'O Fenômeno Pop', 'Britney Spears se tornou um dos maiores nomes da música pop no final da década de 1990, principalmente após o lançamento de seu primeiro álbum, ...Baby One More Time. Suas músicas, coreografias e videoclipes ajudaram a definir parte da estética pop dos anos 2000, período em que a imagem dos artistas passou a ter ainda mais importância na divulgação musical. Desde muito jovem, Britney esteve exposta à atenção do público e da imprensa, tendo sua aparência, seus relacionamentos e suas decisões constantemente comentados. Sua trajetória representa uma fase importante da cultura pop e mostra como a fama pode influenciar a maneira como uma artista é vista pela sociedade.'),
(18, 9, 2, 'Pressão Midiática e Fama', 'A história de Britney também permite discutir a pressão que artistas podem sofrer quando estão constantemente expostos à mídia. Durante muitos anos, sua vida pessoal foi acompanhada por tabloides e programas de entretenimento, que frequentemente tratavam situações particulares como assunto público. Em 2008, a cantora passou a viver sob uma tutela legal que limitava sua autonomia em diferentes aspectos da vida. O caso gerou debates sobre os direitos individuais, a exploração de figuras públicas e a maneira como a indústria do entretenimento lida com artistas que começaram a carreira muito jovens. A situação ganhou ainda mais atenção com o movimento #FreeBritney, que reuniu pessoas interessadas em defender sua autonomia. Esse episódio mostra que a fama também pode trazer consequências que vão muito além do reconhecimento profissional.'),
(19, 10, 1, 'O Camaleão do Rock', 'David Bowie ficou conhecido como um dos artistas mais criativos e influentes da história do rock, principalmente por sua capacidade de modificar sua identidade artística ao longo da carreira. Em vez de manter sempre a mesma imagem, ele criou diferentes personagens, estilos e conceitos que acompanhavam suas produções musicais. Um dos exemplos mais conhecidos é Ziggy Stardust, personagem apresentado no início da década de 1970 que misturava elementos de ficção científica, moda e música. Essa proposta ajudou a questionar padrões da época e mostrou que a imagem de um artista também poderia fazer parte de sua expressão criativa. Bowie teve grande influência na moda, na cultura pop e na maneira como músicos passaram a trabalhar suas próprias identidades.'),
(20, 10, 2, 'Liberdade de Experimentação', 'A liberdade de experimentação foi uma das principais características da carreira de David Bowie. Ao longo dos anos, ele explorou diferentes estilos musicais, passando pelo glam rock, soul, música eletrônica e outras sonoridades. Essas mudanças também apareciam em seus figurinos, apresentações e videoclipes, fazendo com que cada fase de sua carreira tivesse características próprias. Bowie mostrou que um artista não precisa seguir sempre o mesmo caminho para manter seu público ou continuar produzindo trabalhos relevantes. Sua influência pode ser percebida em músicos que também utilizam personagens, conceitos visuais e mudanças de estilo como parte de suas produções.'),
(21, 11, 1, 'Quebrando Tabus', 'Madonna construiu uma das carreiras mais influentes da música pop ao longo das últimas décadas, ficando conhecida por suas músicas, apresentações e pela maneira como questionava padrões sociais. Desde o início de sua trajetória, a cantora utilizou sua imagem e suas produções para abordar assuntos que muitas vezes eram considerados polêmicos, como sexualidade, religião e comportamento feminino. Seus videoclipes e apresentações frequentemente provocavam debates, principalmente por apresentarem mulheres de uma maneira diferente daquela considerada adequada pela sociedade da época. Essa postura ajudou a transformar sua imagem em uma referência de liberdade artística e também mostrou como a música pop pode participar de discussões culturais.'),
(22, 11, 2, 'Liberdade de Expressão', 'A liberdade de expressão é um dos temas mais presentes na trajetória de Madonna. Em diferentes momentos, a cantora enfrentou críticas e tentativas de censura por suas produções, principalmente quando abordava assuntos relacionados à sexualidade e à religião. Além disso, sua carreira também teve relação com debates sobre a autonomia das mulheres e a possibilidade de escolher como se apresentar e se expressar. Madonna apoiou iniciativas relacionadas aos direitos LGBTQIA+ e utilizou sua visibilidade para chamar atenção para questões sociais. Sua trajetória mostra como a arte pode questionar costumes e provocar discussões, mesmo quando as ideias apresentadas não são bem recebidas por todos.'),
(23, 12, 1, 'Poesia e Crítica', 'Cazuza foi um dos compositores mais marcantes do rock brasileiro, conhecido principalmente por suas letras diretas, poéticas e cheias de críticas sociais. Durante sua carreira, tanto no Barão Vermelho quanto em sua fase solo, abordou assuntos relacionados à juventude, aos relacionamentos, às desigualdades e à situação política do Brasil. Em músicas como Brasil e Ideologia, é possível perceber sua maneira de questionar os problemas da sociedade e expressar insatisfação com a realidade do país. Sua produção ganhou ainda mais importância por ter acontecido em um período de mudanças políticas, marcado pelo processo de redemocratização após a ditadura militar.'),
(24, 12, 2, 'Manifesto de Autenticidade', 'A autenticidade foi uma característica muito presente na maneira como Cazuza escrevia e interpretava suas músicas. Suas letras frequentemente misturavam experiências pessoais com questões que também faziam parte da realidade de outras pessoas, criando uma identificação com o público. Mesmo quando tratava de assuntos difíceis, o compositor não deixava de apresentar suas opiniões e sentimentos de maneira direta. Durante os anos finais de sua vida, também se tornou uma figura importante na discussão sobre o HIV e o preconceito enfrentado por pessoas que viviam com o vírus, em uma época em que ainda existia muita desinformação. Sua trajetória deixou uma contribuição importante para a música brasileira e para debates sobre liberdade de expressão e respeito.'),
(25, 13, 1, 'Revolução no Rock Nacional', 'Rita Lee foi uma das artistas mais importantes da música brasileira e ficou conhecida por sua personalidade irreverente, criatividade e participação na transformação do rock nacional. No início de sua carreira, fez parte dos Mutantes, grupo que teve grande importância para o movimento tropicalista e ficou conhecido por misturar rock com elementos da música brasileira e outras referências. Depois, em sua trajetória solo, Rita continuou experimentando diferentes estilos, aproximando o rock da música pop e criando canções que marcaram diferentes gerações. Sua maneira de se apresentar e de escrever também ajudou a construir uma imagem feminina mais independente dentro de um cenário musical que, durante muito tempo, teve maior presença masculina.'),
(26, 13, 2, 'Pioneirismo Feminino', 'Desde os tempos do Os Mutantes até sua prolífica carreira solo, sua irreverência debochada quebrou tabus machistas em uma época conservadora, abrindo caminho para que gerações de artistas femininas ocupassem o centro da cena musical com liberdade e bom humor.'),
(27, 14, 1, 'Fusão de Ritmos', 'Cantor, compositor e ator de talento multifacetado, Seu Jorge une de maneira brilhante as tradições do samba de raiz, da soul music, do funk e da MPB, criando um retrato fiel e pulsante da realidade urbana e cultural do Brasil.'),
(28, 14, 2, 'Identidade e Raízes', 'Sua voz grave inconfundível e suas letras carregadas de crítica social e lirismo valorizam as raízes afro-brasileiras e a dignidade das periferias, projetando a riqueza da nossa identidade cultural para palcos em todo o mundo.'),
(29, 1, 3, 'Inovação Visual e Performance', 'Além da mensagem social, Beyoncé revolucionou a indústria com seus lançamentos surpresa e álbuns visuais, elevando o padrão de entrega técnica, coreografias complexas e grandiosidade em suas turnês mundiais.'),
(30, 2, 3, 'Revolução na Dança e Videoclipes', 'Michael transformou o videoclipe em verdadeiras produções cinematográficas de curta-metragem e popularizou passos icônicos de dança, como o famoso Moonwalk, influenciando gerações de dançarinos e artistas visuais.'),
(31, 3, 3, 'Instrumentação e Formação Clássica', 'Com sólida formação em violoncelo e piano clássico, Laufey aplica esses conhecimentos refinados em seus arranjos, criando uma sonoridade orgânica que se destaca em meio à massificação da música digital.'),
(32, 4, 3, 'Moda e Direção de Arte', 'Além da música, Tyler expandiu sua influência para o mundo da moda com sua marca Golf Wang e assume o controle criativo total da direção de arte de seus álbuns e festivais próprios.'),
(33, 5, 3, 'Poesia Urbana e Lirismo', 'As composições de Alex Turner tornaram-se célebres por retratar com muito humor ácido, ironia e riqueza de detalhes as nuances da vida noturna britânica e as complexidades dos relacionamentos modernos.'),
(34, 6, 3, 'O Sucesso no Cinema', 'Whitney também conquistou as telas de cinema em produções de grande sucesso bilheterio, como o filme \"O Guarda-Costas\", provando sua versatilidade artística entre a atuação e a música.'),
(35, 7, 3, 'Consagração no BRIT Awards', 'Após conquistar sua independência criativa, RAYE fez história ao quebrar o recorde de vitórias em uma única edição do BRIT Awards, coroando sua jornada de superação e talento.'),
(36, 8, 3, 'O Fenômeno do Live Aid', 'A apresentação antológica do Queen no festival Live Aid em 1985 permanece gravada na história como uma das maiores e mais emocionantes performances de rock ao vivo de todos os tempos.'),
(37, 9, 3, 'Legado Coreográfico no Pop', 'As performances marcantes e os passos coreografados de Britney nos anos 2000 definiram o padrão estético e o formato das apresentações de grandes divas pop nas décadas seguintes.'),
(38, 10, 3, 'Androginia e Vanguarda na Moda', 'Bowie desafiou abertamente as barreiras tradicionais de gênero através de figurinos ousados, maquiagens teatrais e a exploração consciente da androginia na cultura pop.'),
(39, 11, 3, 'Visão Empresarial e Imagem', 'Madonna destacou-se não apenas como artista, mas como uma empresária visionária que sempre manteve o controle absoluto sobre sua imagem comercial, contratos e direções criativas.'),
(40, 12, 3, 'O Legado Póstumo', 'Mesmo após sua partida precoce, a poesia crua e visceral de Cazuza continuou a ecoar fortemente, sendo regravada por diversos artistas e mantendo-se atual para novas gerações.'),
(41, 13, 3, 'Humor e Irreverência', 'Rita utilizava o bom humor, os óculos coloridos e tiradas inteligentes para desarmar o conservadorismo e tratar de temas profundos com uma leveza única na cultura brasileira.'),
(42, 14, 3, 'Atuação no Cinema e Projeção', 'Além de sua carreira musical aclamada, Seu Jorge acumulou atuações memoráveis no cinema nacional e internacional, como em sua marcante participação no clássico \"Cidade de Deus\".'),
(43, 13, 2, 'Liberdade e Comportamento', 'Rita Lee também ficou conhecida por questionar padrões de comportamento e defender uma maneira mais livre de viver e se expressar. Em uma época em que as mulheres ainda enfrentavam muitas limitações dentro e fora do meio artístico, ela construiu uma imagem marcada pela independência, pelo humor e por uma postura que não seguia as expectativas tradicionais. Suas músicas frequentemente tratavam de relacionamentos, sexualidade e situações do cotidiano de uma maneira descontraída, mas que também apresentava críticas aos costumes da sociedade. Essa atitude fez com que Rita se tornasse uma referência para mulheres que buscavam mais liberdade para tomar suas próprias decisões e ocupar espaços na música.'),
(44, 13, 3, 'Legado na Música Brasileira', 'A influência de Rita Lee continuou presente mesmo depois de tantas mudanças no cenário musical brasileiro. Suas composições conseguiram aproximar diferentes estilos e públicos, mostrando que o rock também poderia ter características próprias da música nacional. Canções como Ovelha Negra, Mania de Você e Lança Perfume se tornaram conhecidas por diferentes gerações e continuam sendo lembradas até hoje. Além de sua contribuição musical, Rita abriu espaço para que outras mulheres tivessem mais liberdade para participar da criação, produção e apresentação de seus próprios trabalhos. Sua trajetória representa uma parte importante da história da música brasileira e mostra como a personalidade e a criatividade de uma artista podem influenciar toda uma geração.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aula_questao` (`aula_id`);

--
-- Índices de tabela `secoes`
--
ALTER TABLE `secoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aula_secao` (`aula_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `questoes`
--
ALTER TABLE `questoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `secoes`
--
ALTER TABLE `secoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `fk_aula_questao` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `secoes`
--
ALTER TABLE `secoes`
  ADD CONSTRAINT `fk_aula_secao` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
