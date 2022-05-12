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
<div class="jumbotron descr-top" style="background-image: url('<?php echo $imagem_topo; ?>')">
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



<!-- AÇÃO -->
<?php 
//Extraindo os dados retornado da consulta ao banco da tabelea sts_homes_actions a partir do método viewAction() no StsHome
extract($this->dados['sts_homes']['act']);
$imagem_action = URL."app/sts/assets/images/home_action/".$image_action;
?>
<div class="jumbotron descr-action" style="background-image: url('<?php echo $imagem_action; ?>')">
    <div class="container text-center">
        <h4 class="lead mb-4"><?php echo $title_action; ?></h4>
        <h2 class="display-4 mb-4"><?php echo $subtitle_action; ?></h2>
        <p class="lead mb-4"><?php echo $description_action; ?></p>
        <a class="btn btn-primary btn-lg" href="<?php echo $link_btn_action; ?>" role="button"><?php echo $txt_btn_action; ?></a>
    </div>
</div>



<!-- DETALHES -->
<?php
//Extraindo os dados retornado da consulta ao banco da tabelea sts_homes_dats a partir do método viewDetails() no StsHome
extract($this->dados['sts_homes']['det']);
$imagem_detalhe = URL."app/sts/assets/images/home_detail/".$image_det;
?>
<div class="jumbotron descr-det">
    <div class="container">
        <h2 class="display-4 text-center titulo"><?php echo $title_det; ?></h2>
        
        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading"><?php echo $subtitle_det; ?></h2>
                <p class="lead"><?php echo $description_det; ?></p>
            </div>
            
            <div class="col-md-5 order-md-1">
                <img src="<?php echo $imagem_detalhe; ?>" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" alt="Detalhes do serviços...">
            </div>
        </div>
    </div>
</div>


