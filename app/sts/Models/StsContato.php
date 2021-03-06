<?php

namespace App\sts\Models;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}



class StsContato
{
    private array $data;
    private array $dataContact;                             //Recebe os dados que são retornados do BD

    public function create(array $data): bool {

        $this->data = $data;
        $this->data['created_at'] = date("Y-m-d H:i:s");    //Cria uma posição no array para cadastrar a data de criação
        $this->data['updated_at'] = date("Y-m-d H:i:s");    //Cria uma posição no array para cadastrar a data de modificação

        $createContactMsg = new \App\sts\Models\helper\StsCreate();
        $createContactMsg->exeCreate("sts_contacts_msgs", $this->data);

        //O resultado, será um número referente ao último ID inserido no banco, ou o valor null. E como sabemos, qualquer
        //número com excecessão do 0 no PHP é considerado verdadeiro.
        if($createContactMsg->getResult()){
            $_SESSION['msg'] = "<div class='alert alert-success' role='alert'>
                                    <strong>SUCESSO!</strong>
                                    Mesagem enviada com sucesso {$createContactMsg->getResult()} 
                                </div>";
            return true;
        }else{
            $_SESSION['msg'] =  "<div class='alert alert-danger' role='alert'>
                                    <strong>ERRO!</strong>
                                    A mensaagem não foi enviada
                                </div>";
            return false;
        }
    }


    public function view() {
        $viewContact =  new \App\sts\Models\helper\StsRead();
        $viewContact->fullRead("SELECT title_opening_hours, opening_hours, title_address, address, address_two, phone          
                FROM sts_contacts
                LIMIT :limit",
                "limit=1");
        
        $this->dataContact = $viewContact->getResult();

        return $this->dataContact[0];

    }

}
