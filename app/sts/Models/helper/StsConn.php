<?php

namespace App\sts\Models\helper;

use PDO;
use Exception;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

abstract class StsConn
{
    private string $host = HOST;
    private string $user = USER;
    private string $pass = PASS;
    private string $dbName = DBNAME;
    private int $port = PORT;
    public object $connect;

    protected function connect() {
        try{
            $this->connect = new PDO("mysql:host={$this->host};port={$this->port};dbname=".$this->dbName, $this->user, $this->pass);
            return $this->connect;
        }catch(Exception $ex){
            die('Erro: Por favor tente novamente. Caso o erro persista entre em contato com o administrador: '.EMAILADM. '<br>');
        }
    }

}