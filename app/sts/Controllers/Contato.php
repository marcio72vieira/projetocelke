<?php

namespace App\sts\Controllers;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}


class Contato
{
    private $data;              //Recebe os dados que devem ser enviados para a view (Dados do formularip e do Endereço de Contato)
    private $dataForm;          //Recebe os dados vindos do formulário enviado pelo usuário em um primeiro momento

    public function index(){

        //dataForm só receberá os dados enviados pelo formulário se o usuário clicou no botão de submit do formulário
        //"createContMsg". Em um primeiro momento, $this-dataForm estará vazia ou null
        $this->dataForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

        if(!empty($this->dataForm['createContMsg'])){
            unset($this->dataForm['createContMsg']);

            $createContactMsg = new  \App\sts\Models\StsContato();

            if($createContactMsg->create($this->dataForm)){
                
            }else{
                $this->data['form'] = $this->dataForm;
            }
        }

        //Cria um objeto para carregar as informações de exibição sobre contato, Endereço, telefone, hora de funcionamento etc...
        $viewContact = new \App\sts\Models\StsContato();
        $this->data['address'] = $viewContact->view();


        //Instanciando e obtendo os dados da models StsFooter, para recuperar esses dados na view: Views/include/footer.php
        $viewFooter = new \App\sts\Models\StsFooter();
        $this->data['footer'] = $viewFooter->view();        


        //Assim que o usuário chamar este conttroller (direto na URL ou clicando em um link na página)
        //esta parte do código será executada chamando a View. $this->data estará vazia ou é null
        $carregarView = new \Core\ConfigView("sts/Views/contato/contato", $this->data);
        $carregarView->renderizar();
    }
}