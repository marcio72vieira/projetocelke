<?php

namespace App\sts\Models\helper;

use Exception;
use PDO;


// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class StsRead extends StsConn
{
    private string $select;                     //Recebe o select da consulta
    private array $values = [];                 //Recebe os valores referente aos  'links da consulta
    private array  $result = [];                //Recebe o resultado vindo da consulta ao banco
    private object $query;                      //Recebe a query depois de 'preparada'
    private object $conn;                       //Recebe a conexão


    //Retorna para o usuário o resultado que vier do banco de dados
    public function getResult(): array {
        return $this->result;
    }

    //Executa a consulta ao banco, recebe a tabela, os termos (condições), que pode ser nulo, pois o usuário não é obrigado
    //a fornecer condições em uma consulta e a parsestring (são os valores que o usuário quer substituir, que também podem
    //ser nulos, pois se o usuári não oferecer os termos, não haverá paseString).
    public function exeRead($tabela, $termos = null, $parseString = null) {
        
        if(!empty($parseString)){
            parse_str($parseString, $this->values);
        }

        $this->select = "SELECT * FROM {$tabela} {$termos}";
    
        //invocando a execução da instrução de select
        $this->exeInstruction();

    }

    public function fullRead($query, $parseString = null) {
        $this->select = $query;

        if(!empty($parseString)){
            parse_str($parseString, $this->values);     //criará: $values['limit'] = 1; 
        }

        $this->exeInstruction();
    }


    //Invoca a conexão e executa a instrução da query
    private function exeInstruction() {
        $this->connection();
        try{
            $this->exeParameter();
            $this->query->execute();
            $this->result =  $this->query->fetchAll();
        }catch(Exception $ex) {
            $this->result = null;
        }
    }


    //Obtendo a conexão com o banco e preparando a query, que está no atributo ->select
    private function connection() {

        //A propriedade conn recebe o valor do método connect(), da classe StsConn, pois esta classse extende de StsConn
        $this->conn =  $this->connect();                

        //Preparando a query que está no atributo ->select, com a conexaõ(->conn) estabelecida e atribuindo à propriedade ->query
        $this->query = $this->conn->prepare($this->select);
        
        //Imprimindo através do nome das colunas os valores
        $this->query->setFetchMode(PDO::FETCH_ASSOC);

    }

    private function exeParameter() {
        //Verifca se $this->values, que é um array, possui algum elemento.
        if($this->values) {
            //Itera sobre o array, resgatando suas chaves ($link) e seus valores ($values)
            foreach($this->values as $link => $value) {
                if($link == 'limit' || $link == 'offset') {
                    $value = (int) $value;
                }
                $this->query->bindValue(":{$link}", $value, (is_int($value) ? PDO::PARAM_INT : PDO::PARAM_STR));
            }
        }
    }
}
