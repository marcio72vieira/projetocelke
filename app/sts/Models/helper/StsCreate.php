<?php

namespace App\sts\Models\helper;

//use App\sts\Models\StsContato;
use Exception;
use PDO;


// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    //header("Location: http://localhost/celke/");
    die("Erro: Página não encontrada!");
}

class StsCreate extends StsConn
{
    private string $table;              //Recebe a tabela
    private array $data;                //Recebe os dados que se quer salvar
    private string $result;             //Recebe o valor se conseguiu cadastrar com sucesso ou não, refere-se ao result
    private object $insert;             //Irá receber a "query" preparada(que será um objeto)
    private string $query;              //Recebe a query básica (inser into etc...)
    private object $conn;               //Recebe a conexão


    //O usuário irá invocar este método para obter o result. Este result irá conter o último ID inserido
    public function getResult(): string {
        return $this->result;
    }

    public function exeCreate($table, array $data): void {
        $this->table = (string) $table;
        $this->data = $data;
        $this->exeReplaceValue();
        $this->exeInstrunction();
    }

    private function exeReplaceValue(): void {
        //Definindo os campos da tabela a serem preenchidos, através da captura apenas das chaves do array $this->data e
        //transformando-as eum uma string única separada por vírgula
        $columns =  implode(", ", array_keys($this->data));

        //Definindo os links para executar com o bindParam. O processo de captura é o mesmo do acima. O primeiro : é 
        //apenas para o primeiro campo
        $values = ":".implode(", :", array_keys($this->data));

        $this->query =  "INSERT INTO {$this->table} ($columns) VALUES ({$values})";
    }

    private function exeInstrunction(): void {
        $this->connection();
        try{
            //Como não foi utilizado o bindParam, é necessário indicar quais dados se quer executar (inserir no banco),
            //por isso foi utilizado o execute desta forma: execute($this->data) 
            $this->insert->execute($this->data);
            $this->result = $this->conn->lastInsertId();
        }catch(Exception $ex){
            $this->result =  null;
        }
    }

    private function connection(): void {
        //A propriedade $conn recebe o resultado do método herdado em StsConn
        $this->conn = $this->connect();
        $this->insert =  $this->conn->prepare($this->query);
    }



}