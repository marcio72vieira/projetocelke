<?php
// Obs: A "chave" não estará definida, se esta página for acessada diretamente.
if(!defined('48b5t9')){
    die("Erro: Página não encontrada!");
}

if(isset($this->dados['form'])){
    $valueForm = $this->dados['form'];
    extract($valueForm);
}

echo "<h1>Entre em Contato!</h1>";

if(isset($_SESSION['msg'])){
    echo $_SESSION['msg'];
    unset($_SESSION['msg']);
}


?>

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