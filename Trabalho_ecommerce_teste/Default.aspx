<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Trabalho_ecommerce_teste.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Florença Pizzaria</title>

    <!-- Importando o Bootstrap para facilitar a responsividade e o layout -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Importando ícones do Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Fonte Poppins usada em todo o site para deixar o visual mais moderno -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Meu arquivo CSS personalizado com cores e ajustes do design -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>


    <!-- ------------------- NAVBAR ------------------- -->
    <!-- Barra de navegação principal do site -->
    <!-- Aqui ficam os links que direcionam para as páginas principais -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Logo da pizzaria -->
        <img class="brand-logo-dark" src="img/Logo.png" alt="La Florença Logo" />

        <!-- Botão que aparece no mobile para expandir o menu -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links do menu de navegação -->
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link"  aria-current="page" href="Default.aspx">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Menu.aspx">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Carrinho.aspx">Carrinho</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Entrar</a>
                </li>
            </ul>
        </div>
    </nav>


    <!-- ------------------- CARROSSEL ------------------- -->
    <!-- Usei o carrossel do Bootstrap para destacar promoções com imagens -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <!-- Botões indicadores do slide -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <!-- Imagens principais do carrossel -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/Carousel-1.png" alt="Promoção 1">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/Carousel-2.png" alt="Promoção 2">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/Carousel-3.png" alt="Promoção 3">
            </div>
        </div>

        <!-- Botões de navegação entre slides -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Próximo</span>
        </button>
    </div>


    <!-- ------------------- SEÇÃO DE DIFERENCIAIS ------------------- -->
    <!-- Aqui apresento os principais diferenciais da pizzaria -->
    <section class="section section-lg bg-gray-100">
        <div class="container">
            <div class="row row-md row-50">

                <!-- Primeiro diferencial -->
                <div class="col-sm-6 col-xl-4">
                    <article class="box-icon-classic text-center text-md-left">
                        <div class="unit-body">
                            <h5 class="box-icon-classic-title"><a href="#">Delivery</a></h5>
                            <p class="box-icon-classic-text">Delivery grátis em toda a cidade e região do Caparaó Capixaba.</p>
                        </div>
                    </article>
                </div>

                <!-- Segundo diferencial -->
                <div class="col-sm-6 col-xl-4">
                    <article class="box-icon-classic text-center text-md-left">
                        <div class="unit-body">
                            <h5 class="box-icon-classic-title"><a href="#">+10 Opções</a></h5>
                            <p class="box-icon-classic-text">Aqui você encontra o melhor sabor da região, além de uma experiência única.</p>
                        </div>
                    </article>
                </div>

                <!-- Terceiro diferencial -->
                <div class="col-sm-6 col-xl-4">
                    <article class="box-icon-classic text-center text-md-left">
                        <div class="unit-body">
                            <h5 class="box-icon-classic-title"><a href="#">Ingredientes frescos</a></h5>
                            <p class="box-icon-classic-text">Produtos frescos importados direto das plantações e fazendas da família Florença!</p>
                        </div>
                    </article>
                </div>

            </div>
        </div>
    </section>


    <!-- ------------------- SEÇÃO DE PRODUTOS ------------------- -->
    <!-- Seção com as pizzas mais vendidas da semana -->
    <section class="section section-lg bg-default">
        <div class="container">
            <h3 class="oh-desktop"><span class="d-inline-block">As Pizzas mais vendidas da semana!</span></h3>

            <div class="row row-lg row-30">

                <!-- Produto 1 -->
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <article class="product">
                        <div class="card">
                            <div class="card-img-container">
                                <img src="img/PizzaCavallo.png" class="card-img-top" alt="Pizza Caciocavallo Podolico">
                            </div>
                            <div class="card-body">
                                <h6 class="product-title">Caciocavallo Podolico</h6>
                                <p class="card-text">A essência da Itália em uma fatia. Caciocavallo Podolico fresco, derretido sobre o molho de tomate artesanal.</p>
                                <div class="product-price-wrap">
                                    <div class="product-price">R$180,00</div>
                                </div>
                                <!-- Botão para adicionar ao carrinho -->
                                <div class="product-button mt-3">
                                    <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <!-- Produto 2 -->
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <article class="product">
                        <div class="card">
                            <div class="card-img-container">
                                <img src="img/Fragole-Nutella.png" class="card-img-top" alt="Pizza Fragole e Nutella">
                            </div>
                            <div class="card-body">
                                <h6 class="product-title">Pizza Fragole e Nutella</h6>
                                <p class="card-text">Nutella cremosa em contraste com morangos frescos e vibrantes, uma pizza da Itália.</p>
                                <br />
                                <div class="product-price-wrap">
                                    <div class="product-price">R$100,00</div>
                                </div>
                                <div class="product-button mt-3">
                                    <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <!-- Produto 3 -->
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <article class="product">
                        <div class="card">
                            <div class="card-img-container">
                                <img src="img/Serra-Valmadeiros.png" class="card-img-top" alt="Pizza Serra Valmadeiros">
                            </div>
                            <div class="card-body">
                                <h6 class="product-title">Pizza Serra Valmadeiros</h6>
                                <p class="card-text">O sabor autêntico das montanhas. Queijos cremosos e curados, com manjericão.</p>
                                <br />
                                <div class="product-price-wrap">
                                    <div class="product-price">R$120,00</div>
                                </div>
                                <div class="product-button mt-3">
                                    <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <!-- Produto 4 -->
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <article class="product">
                        <div class="card">
                            <div class="card-img-container">
                                <img src="img/Provolone.png" class="card-img-top" alt="Pizza Provolone">
                            </div>
                            <div class="card-body">
                                <h6 class="product-title">Pizza Provolone</h6>
                                <p class="card-text">Provolone de cura perfeita, derretido até a borda e finalizado com azeite de oliva extra virgem. Levemente picante e defumado.</p>
                                <div class="product-price-wrap">
                                    <div class="product-price">R$150,00</div>
                                </div>
                                <div class="product-button mt-3">
                                    <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

            </div>
        </div>
    </section>


    <!-- ------------------- RODAPÉ ------------------- -->
    <!-- Parte final do site com informações, links e redes sociais -->
    <footer class="bg-dark text-center text-lg-start text-white">
        <div class="container p-4">
            <div class="row">

                <!-- Coluna sobre nós -->
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Sobre nós</h5>
                    <p>
                        Somos uma empresa dedicada a oferecer os melhores produtos e serviços para nossos clientes, sempre com
                        qualidade e compromisso.
                    </p>
                </div>

                <!-- Coluna de links rápidos -->
                <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Links</h5>
                    <ul class="list-unstyled mb-0">
                        <li><a href="index.html" class="text-white">Home</a></li>
                        <li><a href="menu.html" class="text-white">Menu</a></li>
                        <li><a href="carrinho.html" class="text-white">Carrinho</a></li>
                    </ul>
                </div>

                <!-- Coluna de contato -->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 id="contact">Contato</h5>
                    <ul class="list-unstyled mb-0">
                        <li><i class="bi bi-geo-alt"></i>Rua Esplanada da Silva, 123, Alegre</li>
                        <li><i class="bi bi-telephone"></i>(28) 9934-5678</li>
                        <li><i class="bi bi-envelope"></i>PizzariaLaFlorença@gmail.com</li>
                    </ul>
                </div>

                <!-- Coluna de redes sociais -->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-0">Siga-nos</h5>
                    <div class="mt-3">
                        <a href="#" class="text-white me-4">
                            <i class="bi bi-facebook"></i>Facebook
                        </a>
                        <a href="#" class="text-white me-4">
                            <i class="bi bi-instagram"></i>Instagram
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Créditos finais -->
        <div class="text-center p-3 bg-secondary">
            © 2025 Todos os direitos reservados:
            <a class="text-white" href="#">La Florença Pizzaria</a>
        </div>
    </footer>


    <!-- ------------------- SCRIPTS ------------------- -->
    <!-- Arquivos JS para funcionamento do Bootstrap e scripts personalizados -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>

</body>
</html>
