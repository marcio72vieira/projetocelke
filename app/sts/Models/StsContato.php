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

    public function create(array $data): bool {

        $this->data = $data;
        $this->data['created_at'] = date("Y-m-d H:i:s");    //Cria uma posição no array para cadastrar a data de criação
        $this->data['updated_at'] = date("Y-m-d H:i:s");    //Cria uma posição no array para cadastrar a data de modificação

        $createContactMsg = new \App\sts\Models\helper\StsCreate();
        $createContactMsg->exeCreate("sts_contacts_msgs", $this->data);

        //O resultado, será um número referente ao último ID inserido no banco, ou o valor null. E como sabemos, qualquer
        //número com excecessão do 0 no PHP é considerado verdadeiro.
        if($createContactMsg->getResult()){
            $_SESSION['msg'] =  "Mensagem enviada com sucesso! {$createContactMsg->getResult()}";
            return true;
        }else{
            $_SESSION['msg'] =  "Erro ao enviar Mensagem!";
            return false;
        }
        

    }
}
