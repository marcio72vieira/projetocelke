<?php

namespace Core;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

class Config
{
    protected function config(){

        define('URL', 'http://localhost/celke/');           // /celke é a pasta do projeto, ou seja, é a raiz do projeto
        define('URLADM', 'http://localhost/celke/adm');

        define('CONTROLLER', 'Home');                       //Controle Padrão
        define('METODO', 'Index');                          //Método Padrão
        define('CONTROLLERERRO', 'Erro');                   //Método Padrão

        //Credenciais de acesso ao Banco de Dados
        define('HOST', 'localhost');
        define('USER', 'root');
        define('PASS', 'marcio72');
        define('DBNAME', 'celke');
        define('PORT', 3306);

        define('EMAILADM', 'marcio72vieira@hotmail.com');

    }
}