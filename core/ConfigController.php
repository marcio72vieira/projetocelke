<?php

namespace Core;

// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

    class ConfigController extends Config
    {
        private ?string $url;
        private array $urlConjunto;
        private string $urlController;
        private string $urlParametro;
        private array $format;
        private string $urlslugController;
        private string $classe;                 //Vai receber a classe (caminho e seu nome)


        public function __construct(){

            $objConfig = new \Core\Config();        //Classe Config
            $objConfig->config();                   //Método config()
            
            //Verifica se além da url raiz (localhost//celke), foi enviado mais alguma "coisa", para que seja capturada, ou seja,
            //se não a variável url não estiver vazia.
            if(!empty(filter_input(INPUT_GET, "url", FILTER_DEFAULT))){

                $this->url = filter_input(INPUT_GET, "url", FILTER_DEFAULT);
                
                $this->limparUrl();
                
                //Dividir a url em partes: controller e parâmetros(métodos)
                $this->urlConjunto = explode("/", $this->url);

                //Resgatando o controller
                if(isset($this->urlConjunto[0])){
                    $this->urlController = $this->slugController($this->urlConjunto[0]);
                }else{
                    $this->urlController = $this->slugController(CONTROLLER);
                }

                //Resgatando o parâmetro
                if(isset($this->urlConjunto[1])){
                    $this->urlParametro = $this->urlConjunto[1];
                }else{
                    $this->urlParametro = "";
                }
            }else{
                $this->urlController = $this->slugController(CONTROLLER);
                $this->urlParametro = "";
            }
        }

        private function limparUrl(){
            //Eliminar as tags
            $this->url = strip_tags($this->url);
            //Eliminar os espaços em branco
            $this->url =  trim($this->url);
            //Eliminar a barra do final da url
            $this->url = rtrim($this->url, "/");
            //Substituir caracteres especiais por caracteres normais
            $this->format['a'] = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜüÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûýýþÿRr"!@#$%&*()_-+={[}]?;:.,\\\'<>°ºª ';
            $this->format['b'] = 'aaaaaaaceeeeiiiidnoooooouuuuuybsaaaaaaaceeeeiiiidnoooooouuuyybyRr--------------------------------';
            $this->url = strtr(utf8_decode($this->url), utf8_decode($this->format['a']), $this->format['b']);
        }

        private function slugController($slugController){
            //Converte para minúsculo
            $this->urlslugController = strtolower($slugController);
            //Converte o traço para espaço em branco
            $this->urlslugController = str_replace("-", " ", $this->urlslugController);
            //Converter a primeira letra de cada palavra(se houver) para maiúsculo
            $this->urlslugController =  ucwords($this->urlslugController);
            //Retirar o espaço em branco que  existe (se houver) em cada palavra
            $this->urlslugController = str_replace(" ", "", $this->urlslugController);
            return $this->urlslugController;
        }

        public function carregar(){
            $this->classe = "App\\sts\\Controllers\\". $this->urlController;      //Caminha das classes controller do Site (sts)
            
            if(class_exists($this->classe)){
                $this->carregarClasse();
            }else{
                $this->urlController = $this->slugController(CONTROLLERERRO);
                $this->carregar();
            }
        }


        private function carregarClasse() {
            $classeCarregar = new $this->classe();                          //Carregando uma classe
            if(method_exists($classeCarregar, "index")){
                $classeCarregar->index();                                       //Invocando um método da classe
            }else{
                die('Erro: Por favor tente novamente. Caso o erro persista entre em contato com o administrador: '.EMAILADM. '<br>');
            }
        }
    }