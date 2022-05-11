<?php

namespace App\sts\Models;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class StsHome
{
    private array $data;                //Recebe todos os dados relacionados a página home
    private array $dataTop;             //Recebe os registros do banco de dados com relação ao topo da página Home
    private array $dataServ;            //Recebe os registros do banco de dados com relação aos serviços da página Home

    public function index() {

        $this->viewTop();               //Invoca o método para buscar as informações do topo da página Home
        $this->viewServ();               //Invoca o método para buscar as informações dos serviços da página Home

        return $this->data;             //Retorna todos os dados da página home contidos no top, serv, etc... 
        
    }

    public function viewTop() {
        $viewHomeTop =  new \App\sts\Models\helper\StsRead();
        $viewHomeTop->fullRead("SELECT id, title_top, description_top, link_btn_top, txt_btn_top, image_top
                FROM sts_homes_tops 
                LIMIT :limit",
                "limit=1");
        
        $this->dataTop = $viewHomeTop->getResult();

        //$this->data['top'] é apenas mais um índice criado para o array $data
        // Neste caso específico, estamos retornando apenas a posição zero (0), por se tratar de apenas um registro,
        // poderia ser apenas $this->data['top'] = $this->dataTop também
        $this->data['top'] = $this->dataTop[0];
        
        return $this->data;

    }


    private function viewServ() {
        $viewHomeServ =  new \App\sts\Models\helper\StsRead();
        $viewHomeServ->fullRead("SELECT id, title_serv, description_serv,
                                        icone_um_serv, titulo_um_serv, description_um_serv,
                                        icone_dois_serv, titulo_dois_serv, description_dois_serv,
                                        icone_tres_serv, titulo_tres_serv, description_tres_serv
                FROM sts_homes_servs 
                LIMIT :limit",
                "limit=1");
        
        $this->dataServ = $viewHomeServ->getResult();

        //$this->data['serv'] é apenas mais um índice criado para o array $data
        // Neste caso específico, estamos retornando apenas a posição zero (0), por se tratar de apenas um registro,
        // poderia ser apenas $this->data['top'] = $this->dataServ também
        $this->data['serv'] = $this->dataServ[0];
        
        return $this->data;

    }
}