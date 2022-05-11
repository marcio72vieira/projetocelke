<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}


//Extraindo os dados retornado da consulta ao banco da tabelea sts_homes_tops a partir do método viewTop() no StsHome
extract($this->dados['sts_homes']['top']);

// Resgatando a imagem em uma variável
$imagem_topo = URL."app/sts/assets/images/home_topo/".$image_top;
?>


<!-- TOPO -->
<!-- A imagem topo.jpg antes estava no css.personalizado na class descr-top -->
<!-- pode-se colocar a imagem diretamente desta forma, ou utilizando a variável $imagem_topo, como abaixo 
    <div class="jumbotron descr-top" style="background-image: url('<?php //echo URL; ?>app/sts/assets/images/home_topo/topo.jpg')">
-->
<div class="jumbotron descr-top" style="background-image: url('<?php echo $imagem_topo; ?>">
    <div class="container text-center">
        <h1 class="display-4"><?php echo $title_top; ?></h1>
        <p class="lead"><?php echo $description_top; ?></p>
        <a class="btn btn-primary btn-lg" href="<?php echo $link_btn_top; ?>" role="button"><?php echo $txt_btn_top; ?></a>
    </div>
</div>


<!-- SERVIÇOS -->
<?php
//Extraindo os dados retornado da consulta ao banco da tabelea sts_homes_servs a partir do método viewServ() no StsHome
extract($this->dados['sts_homes']['serv']);
?>
<div class="jumbotron descr-serv">
    <div class="container text-center">
        <h2 class="display-4"><?php echo $title_serv; ?></h2>
        <p class="lead pb-4"><?php echo $description_serv; ?></p>

        <div class="row">
            <div class="col-lg-4">
                <div class="rounded-circle circulo centralizar border border-info shadow">
                    <i class="<?php echo $icone_um_serv; ?>"></i>
                </div>
                <h2 class="mt-4 mb-4"><?php echo $titulo_um_serv; ?></h2>
                <p><?php echo $description_um_serv; ?></p>
            </div>
            <div class="col-lg-4">
                <div class="rounded-circle circulo centralizar border border-info shadow">
                    <i class="<?php echo $icone_dois_serv; ?>"></i>
                </div>
                <h2 class="mt-4 mb-4"><?php echo $titulo_dois_serv; ?></h2>
                <p><?php echo $description_dois_serv; ?></p>
            </div>
            <div class="col-lg-4">
                <div class="rounded-circle circulo centralizar border border-info shadow">
                    <i class="<?php echo $icone_tres_serv; ?>"></i>
                </div>
                <h2 class="mt-4 mb-4"><?php echo $titulo_tres_serv; ?></h2>
                <p><?php echo $description_tres_serv; ?></p>
            </div>
        </div>
    </div>
</div>

