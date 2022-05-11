<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

echo "<h1>Lista Sobre Empresas</h1>";

foreach($this->dados['sts_sobres_empresas'] as $sobre_empresa){
    extract($sobre_empresa);
    echo "<b>ID:</b> ". $id ."<br>";
    echo "<b>Título:</b> ". $title ."<br>";
    echo "<b>Descrição:</b> ". $description ."<br>";
    echo "<b>Imagem</b> ". $image ."<br>";
    echo "<hr>";
}