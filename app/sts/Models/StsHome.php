<?php

namespace App\sts\Models;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class StsHome
{
    private array $data;

    public function index() {

        $viewHome =  new \App\sts\Models\helper\StsRead();
        $viewHome->fullRead("SELECT id, title_topo, description_topo 
                FROM sts_homes 
                LIMIT :limit",
                "limit=1");
        
        $this->data = $viewHome->getResult();

        // Neste caso específico, estamos retornando apenas a posição zero (0), por se tratar de apenas um registro,
        // poderia ser apenas return $this->data, também
        return $this->data[0];
        
    }
}