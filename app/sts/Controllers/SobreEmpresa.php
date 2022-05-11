<?php

namespace App\sts\Controllers;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

class SobreEmpresa
{
    private array $dados;

    public function index(){

        //Instanciando e obtendo dados da models
        $list = new \App\sts\Models\StsSobreEmpresa();
        $this->dados['sts_sobres_empresas'] = $list->index();

        //Instanciando e enviando dados para a view
        $carregarView = new \Core\ConfigView("sts/Views/sobreEmpresa/sobreEmpresa", $this->dados);
        $carregarView->renderizar();
    }
}