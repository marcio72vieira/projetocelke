<?php
    session_start();
    ob_start();

    define('48b5t9', true);                 // Define uma chave, para bloquer tentativa de acesso as páginas diretamente, pela URL
                                            // No início de todas as páginas é verificada se esta "chave" foi definida, obrigando
                                            // o usuário a ter que acessar as páginas só a partir da página index.php, pois é esta
                                            // pagina quem está defnindo uma constante '48b5t9'.

    require './vendor/autoload.php';        // Carrega o arquivo de autoload do Composer, responsável pelo carregamento das classes

    use Core\ConfigController as Home;

    $url = new Home();

    $url->carregar();
?>
