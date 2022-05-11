<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

echo "<h1>Lista PÁGINA HOME</h1>";

extract($this->dados['sts_homes']);
echo "<b>ID:</b> ". $id ."<br>";
echo "<b>Título:</b> ". $title_topo ."<br>";
echo "<b>Descrição:</b> ". $description_topo ."<br>";
echo "<hr>";
