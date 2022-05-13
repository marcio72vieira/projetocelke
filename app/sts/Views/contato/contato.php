<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

if(isset($this->dados['form'])){
    $valueForm = $this->dados['form'];
    extract($valueForm);
}
?>

<div class="jumbotron head-contato">
    <div class="container">
        <h1 class="text-center">Contato</h1>
    </div>            
</div>

<div class="jumbotron contato">
    <div class="container">
        <div class="row featurette">
            <div class="col-md-6 mb-4">
                <?php 
                    if(isset($_SESSION['msg'])){
                        echo $_SESSION['msg'];
                        unset($_SESSION['msg']);
                    }
                ?>
                <form>
                    <div class="form-group">
                        <label for="name">Nome</label>
                        <input name="name" type="text" class="form-control" id="name" placeholder="Nome completo" required>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input name="email" type="email" class="form-control" id="email" placeholder="Seu melhor e-mail" required>
                    </div>

                    <div class="form-group">
                        <label for="subject">Assunto</label>
                        <input name="subject" type="text" class="form-control" id="subject" placeholder="Assunto da mensagem" required>
                    </div>

                    <div class="form-group">
                        <label for="content">Mensagem</label>
                        <textarea name="content" class="form-control" id="content" rows="3" placeholder="Conteúdo da mensagem" required></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>

            <?php extract($this->dados['address']); ?>
            
            <div class="col-md-6">
                <h3><?php echo $title_opening_hours;?></h3>
                <p class="lead"><?php echo $opening_hours;?></p>
                <hr>
                <address>
                    <strong><?php echo $title_address;?></strong>
                    <?php echo $address;?><br>
                    <?php echo $address_two;?><br>
                    <?php echo $phone;?><br>
                </address>
            </div>
        </div>
    </div>            
</div>








<!-- action é igual a "", porque vai-se submeter o formulário para a própria página, ou seja, para o próprio controller
     que chama esta view, assim como todos os outros scripts que envolve a página de contato -->
<form method="POST" action="">
    <label>Nome</label>
    <input name="name" type="text"  placeholder="Nome completo" value="<?php if(isset($name)) {echo $name;} ?>"><br><br>
    <label>E-mail</label>
    <input name="email" type="email"placeholder="Seu melhor email" value="<?php if(isset($email)) {echo $email;}  ?>"><br><br>
    <label>Assunto</label>
    <input name="subject" type="text" name="subject" placeholder="Assunto da mensagem" value="<?php if(isset($subject)) {echo $subject;}  ?>"><br><br>
    <label>Mensagem</label>
    <textarea name="content" rows="6"> <?php if(isset($content)) {echo $name;}  ?></textarea>

    <input name="createContMsg" type="submit" value="Enviar">

</form>