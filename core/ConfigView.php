<?php

namespace Core;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}


class ConfigView
{
    private string $nome;         //Recebe o nome (endereço) da view
    private $dados;               //Recebe os dados enviados para a view


    public function __construct($nome, $dados) {
        $this->nome = $nome;
        $this->dados = $dados;
    }

    public function renderizar(){
        if(file_exists('app/'. $this->nome .'.php')){
            include 'app/sts/Views/include/head.php';                   //Todo o código do arquivo cabeçalho é incluido aqui
            include 'app/sts/Views/include/menu.php';                   //Todo o código do arquivo menu é incluido aqui
            include 'app/'. $this->nome .'.php';                        //Todo o código da view é incluido aqui, então eu posso utilizar var_dump($this->dados), porque tudo está na mesma página
            include 'app/sts/Views/include/footer.php';                 //Todo o código do arquivo rodapé é incluido aqui.
            include 'app/sts/Views/include/librariesJs.php';                 //Todo o código do arquivo rodapé é incluido aqui.
        }else{                                                          //Então, é como se eu tivesse todo o arquivo HTML com scripts PHP dentro deste "if" e consequentemente eu posso utilizar tudo o que estiver dentro desta página, inclusive: var_dump($this->dados)
            die("ERRO Desenvolvimento: Página não encontrada: (". "app/". $this->nome .".php)");
        }
        
    }

}