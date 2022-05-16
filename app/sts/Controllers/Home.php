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
        //dados['sts_homes'] é só mais um índice criado para o array $dados
        $home = new \App\sts\Models\StsHome();
        $this->dados['sts_homes'] = $home->index();


        //Instanciando e obtendo os dados da models StsFooter, para recuperar esses dados na view: Views/include/footer.php
        $viewFooter = new \App\sts\Models\StsFooter();
        $this->dados['footer'] = $viewFooter->view();
        
        //Instanciando e enviando dados((sts_homes e footer) para a classe ConfigView
        $carregarView = new \Core\ConfigView("sts/Views/home/home", $this->dados);
        $carregarView->renderizar();
    }
}