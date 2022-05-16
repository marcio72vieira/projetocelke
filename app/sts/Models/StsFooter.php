<?php

namespace App\sts\Models;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}



class StsFooter
{
    private array $dataFooter;                             //Recebe os dados que são retornados do BD

    public function view() {
        $viewFooter =  new \App\sts\Models\helper\StsRead();
        $viewFooter->fullRead("SELECT title_site, title_contact, phone, address, url_address, cnpj, url_cnpj, title_social_networks,
                txt_one_social_networks, link_one_social_networks, txt_two_social_networks, link_two_social_networks,
                txt_three_social_networks, link_three_social_networks, txt_four_social_networks, link_four_social_networks
                FROM sts_footers
                LIMIT :limit",
                "limit=1");
        
        $this->dataFooter = $viewFooter->getResult();

        return $this->dataFooter[0];

    }

}
