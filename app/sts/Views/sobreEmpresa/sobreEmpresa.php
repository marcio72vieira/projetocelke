<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}
?>

<div class="jumbotron head-sobre">
<div class="container">
    <h1 class="text-center">Sobre a Empresa</h1>
</div>            
</div>

<div class="jumbotron sobre">
    <div class="container">
        <?php 
            //Irá iterar de acordo com a quantidade de registros referente ao model StsSobreEmpresa
            foreach($this->dados['sts_sobres_empresas'] as $sobre_empresa){
                extract($sobre_empresa);
                $imagem_sobre_empresa = URL."app/sts/assets/images/about_company/". $id . "/".$image;

        ?>
                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <h2 class="featurette-heading"><?php echo $title; ?></h2>
                        <p class="lead"><?php echo $description; ?></p>
                    </div>
                    
                    <div class="col-md-5 order-md-1">
                        <!-- Cada imagem está no seu próprio diretório -->
                        <img src="<?php echo $imagem_sobre_empresa; ?>" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" alt="<?php echo $title; ?>">
                    </div>
                </div>
                
                <hr class="featurette-divider">
        <?php 
            } 
        ?>
    </div>            
</div>


<?php
foreach($this->dados['sts_sobres_empresas'] as $sobre_empresa){
    extract($sobre_empresa);
    echo "<b>ID:</b> ". $id ."<br>";
    echo "<b>Título:</b> ". $title ."<br>";
    echo "<b>Descrição:</b> ". $description ."<br>";
    echo "<b>Imagem</b> ". $image ."<br>";
    echo "<hr>";
}