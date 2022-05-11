<?php

namespace App\sts\Controllers;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class Home
{
    private array $dados;

    public function index(){
        
        //Instanciando e obtendo dados da models
        $home = new \App\sts\Models\StsHome();
        $this->dados['sts_homes'] = $home->index();

        //Instanciando e enviando dados para a view
        $carregarView = new \Core\ConfigView("sts/Views/home/home", $this->dados);
        $carregarView->renderizar();
    }
}