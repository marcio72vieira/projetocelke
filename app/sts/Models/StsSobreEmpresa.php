<?php

namespace App\sts\Models;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class StsSobreEmpresa
{

    public function index() {
        
        $listSobreEmpresa =  new \App\sts\Models\helper\StsRead();
        /* $listSobreEmpresa->exeRead("sts_sobres_empresas", "WHERE sts_situation_id =:sts_situation_id LIMIT :limit", "sts_situation_id=1&limit=5"); */
        $listSobreEmpresa->fullRead("SELECT id, title, description, image 
                FROM sts_sobres_empresas 
                WHERE sts_situation_id =:sts_situation_id LIMIT :limit",
                "sts_situation_id=1&limit=5");
        
        return $listSobreEmpresa->getResult();
        
    }
}