<!-- UTILIZE O XAMPP PARA VER OS ARQUIVOS .php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site empresa</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>

        <h1 id="logo"><img src="imagens/logo.png" alt=""> Zenfit</h1>
        <ul id="menu">
            <a href="index.html"><li>INÍCIO</li></a>
            <a href="sobre.html"><li>SOBRE</li></a>
            <a href="serviços.php" id="produtos"><li class="link">SERVIÇOS</li></a>
            <a href="novidades.php"><li>NOVIDADES</li></a>
            <a href="contato.html"><li>CONTATO</li></a>
        </ul>

    </header>
    <main class="serv-container">
        
        
        <h1>Conheça os nossos planos</h1>

        <div class="area-planos">
            <div id="planos">
            <table class="table table-striped"> 
                    <thead class="table-dark">
                        <tr>
                            <td>Tipo</td>
                            <td>Valor</td>
                            <td>Quantidade disponível</td>
                        </tr>
                    </thead>
                    <tbody>
                <?php
                    $conexao = new mysqli("localhost", "root", "", "servicos-novidades");
                    $consulta = $conexao->query("select * from servicos");
                    $resultado = $consulta->fetch_all(MYSQLI_ASSOC);
                    foreach($resultado as $linha)
                        echo("<tr><td>" .$linha['nome']."</td><td>".$linha['valor']."</td><td>".$linha['quantidade']. "</td></tr>");
                    $conexao->close();
            
                ?>
                    </tbody>
            </div>
        </div>

    </main>
    <hr>
    
</body>
</html>