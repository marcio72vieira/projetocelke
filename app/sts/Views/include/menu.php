<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}
?>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-primary">
    <div class="container">
        <a class="navbar-brand" href="<?php echo URL; ?>">MRCTech</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo URL; ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo URL; ?>sobre-empresa">Sobre Empresa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo URL; ?>contato">Contato</a>
                </li>
            </ul>                    
        </div>
    </div>
</nav>
