<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Trabalho_ecommerce_teste.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Completo</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Fonte Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS personalizado -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img class="brand-logo-dark" src="img/Logo.png" alt="La Florença Logo" />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="Default.aspx">Home</a></li>
                    <li class="nav-item active"><a class="nav-link" aria-current="page" href="Menu.aspx">Menu</a></li>
                    <li class="nav-item"><a class="nav-link" href="Carrinho.aspx">Carrinho</a></li>
                    <li class="nav-item"><a class="nav-link" href="Login.aspx">Entrar</a></li>
                </ul>
                <span class="navbar-text"></span>
            </div>
        </nav>


        <!-- Seção destaque com carrossel de pizzas -->
        <section class="section pt-5 pb-5 bg-gray-100">
            <div class="container text-center">
                <h1 class="display-4" style="color: var(--vermelho-principal);">A melhor da Região!</h1>
                <p class="lead mb-5" style="color: var(--texto-secundario);">Feito com a tradição italiana e os ingredientes mais frescos.</p>

                <div class="row justify-content-center">
                    <div class="col-lg-3 col-md-5">
                        <!-- Carrossel de pizzas -->
                        <div id="carouselPizzas" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3500">
                            <div class="carousel-inner">
                                <!-- Pizza Cavallo -->
                                <div class="carousel-item active">
                                    <img src="img/PizzaCavallo.png" class="d-block w-100 carousel-pizza-img" alt="Pizza Cavallo">
                                    <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 p-2 rounded"></div>
                                </div>
                                <!-- Pizza Parma -->
                                <div class="carousel-item">
                                    <img src="img/ParmaG.png" class="d-block w-100 carousel-pizza-img" alt="Parma">
                                    <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 p-2 rounded"></div>
                                </div>
                                <!-- Pizza Trufa -->
                                <div class="carousel-item">
                                    <img src="img/Trufa.png" class="d-block w-100 carousel-pizza-img" alt="trufa">
                                    <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 p-2 rounded"></div>
                                </div>
                            </div>
                            <!-- Controles do carrossel -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselPizzas" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Anterior</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselPizzas" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Próximo</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Seção de Pizzas Artesanais -->
        <section id="pizzas-artesanais" class="section section-lg bg-white">
            <div class="container">
                <div class="row">

                    <section id="pizzas" class="section section-lg bg-white">
                        <div class="container">
                            <h3><span class="d-inline-block">Pizzas Artesanais</span></h3>

                            <div class="row row-lg row-30 mb-5">
                                <!-- Card Pizza Frango Cremoso -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp">
                                        <img src="img/Frango.png" class="card-img-top" alt="Frango Cremoso" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Frango Cremoso</h6>
                                            <p class="card-text text-muted small">Molho de tomate, mussarela e frango com requeijão.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$85.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Lombinho -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".1s">
                                        <img src="img/lombinho.png" class="card-img-top" alt="Lombinho" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Lombinho</h6>
                                            <p class="card-text text-muted small">Lombinho fatiado, mussarela e pimenta do reino.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$90.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Margherita -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".2s">
                                        <img src="img/Margherita.png" class="card-img-top" alt="Margherita" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Margherita Tradicional</h6>
                                            <p class="card-text text-muted small">Mussarela, manjericão, tomates assados e pimenta italiana.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$60.50</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Parma e Gorgonzola -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".3s">
                                        <img src="img/ParmaG.png" class="card-img-top" alt="Parma" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Parma e Gorgonzola</h6>
                                            <p class="card-text text-muted small">Parma fatiado com gorgonzola picado.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$94.90</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>

                            <!-- Segunda linha de pizzas -->
                            <div class="row row-lg row-30">
                                <!-- Card Pizza Caciocavallo Podolico -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp">
                                        <img src="img/PizzaCavallo.png" class="card-img-top" alt="Cavallo" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Caciocavallo Podolico</h6>
                                            <p class="card-text text-muted small">Caciocavallo Podolico, molho de tomate, manjericão e molho pesto.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$180.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Provolone -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".1s">
                                        <img src="img/Provolone.png" class="card-img-top" alt="Provolone" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Provolone</h6>
                                            <p class="card-text text-muted small">Queijo provolone defumado e pimenta biquinho.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$150.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Trufa Negra -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".2s">
                                        <img src="img/Trufa.png" class="card-img-top" alt="Trufa" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Trufa Negra</h6>
                                            <p class="card-text text-muted small">Trufa Negra em fatias e Caciocavallo Podolico.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$260.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pizza Serra Valmadeiros -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".3s">
                                        <img src="img/Serra-Valmadeiros.png" class="card-img-top" alt="Serra" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Serra Valmadeiros</h6>
                                            <p class="card-text text-muted small">Molho de tomate, serra valmadeiros, tomate cereja e manjericão.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$175.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </section>

                    <asp:Repeater ID="rptPizzaArtesanal" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                <article class="product card h-100">
                                    <img src='<%# Eval("ImagemUrl") %>' class="card-img-top" alt='<%# Eval("Nome") %>' style="height: 200px; object-fit: cover;" />
                                    <div class="card-body text-center d-flex flex-column">
                                        <h6 class="product-title"><%# Eval("Nome") %></h6>
                                        <p class="card-text text-muted small"><%# Eval("Descricao") %></p>
                                        <div class="mt-auto">
                                            <div class="product-price-wrap">
                                                <div class="product-price">R$ <%# Eval("Preco", "{0:N2}") %></div>
                                            </div>
                                            <a class="btn btn-primary mt-2" href="#">Adicionar ao Carrinho</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- Seção de Pizzas Doces -->
        <section id="pizzas-doces" class="section section-lg bg-gray-100">
            <div class="container">
                <div class="row">

                    <section id="pizzas-doces" class="section section-lg bg-gray-100">
                        <div class="container">
                            <h3><span class="d-inline-block">Pizzas Doces</span></h3>
                            <div class="row row-lg row-30 justify-content-center">

                                <!-- Card Amêndoa de Avelã com Amora -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp">
                                        <img src="img/Avelã-Amora.png" class="card-img-top" alt="Amora" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Amêndoa de Avelã com Amora</h6>
                                            <p class="card-text text-muted small">Creme de chocolate, avelãs e amoras.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$85.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Banana Caramelizada -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".1s">
                                        <img src="img/Banana-doce.png" class="card-img-top" alt="Banana" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Banana Caramelizada</h6>
                                            <p class="card-text text-muted small">Banana, canela, açúcar e um toque de chocolate.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$55.90</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Dois Chocolates -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".2s">
                                        <img src="img/Chocolate.png" class="card-img-top" alt="Chocolate" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Dois Chocolates</h6>
                                            <p class="card-text text-muted small">Chocolate meio amargo e chocolate branco.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$50.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Fragole e Nutella -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".3s">
                                        <img src="img/Fragole-Nutella.png" class="card-img-top" alt="fragole" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Fragole e Nutella</h6>
                                            <p class="card-text text-muted small">Morango com Nutella.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap">
                                                    <div class="product-price">R$100.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary mt-3" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                            </div>
                        </div>
                    </section>


                    <asp:Repeater ID="rptPizzaDoce" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                <article class="product card h-100">
                                    <img src='<%# Eval("ImagemUrl") %>' class="card-img-top" alt='<%# Eval("Nome") %>' style="height: 200px; object-fit: cover;" />
                                    <div class="card-body text-center d-flex flex-column">
                                        <h6 class="product-title"><%# Eval("Nome") %></h6>
                                        <p class="card-text text-muted small"><%# Eval("Descricao") %></p>
                                        <div class="mt-auto">
                                            <div class="product-price-wrap">
                                                <div class="product-price">R$ <%# Eval("Preco", "{0:N2}") %></div>
                                            </div>
                                            <a class="btn btn-primary mt-2" href="#">Adicionar ao Carrinho</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- Seção de Bebidas -->
        <section id="bebidas" class="section section-lg bg-white">
            <div class="container">
                <div class="row">

                    <section id="bebidas" class="section section-lg bg-white">
                        <div class="container">
                            <h3><span class="d-inline-block">Bebidas</span></h3>
                            <div class="row row-lg row-30 justify-content-center">

                                <!-- Card Vinho Opus One -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp">
                                        <img src="img/NAPA-VALLEY.png" class="card-img-top" alt="Napa" height="200" style="object-fit: contain;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">2021 Opus One Napa Valley tinto</h6>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$3.400,00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Vinho La Tâche -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".1s">
                                        <img src="img/Domaine.png" class="card-img-top" alt="Domaine" height="200" style="object-fit: contain;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Vinho La Tâche</h6>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$77.990,90</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Coca Cola -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".2s">
                                        <img src="img/CocaCola.png" class="card-img-top" alt="cocacola" height="200" style="object-fit: contain;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Coca Cola</h6>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$25.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Suco de Maracujá -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".3s">
                                        <img src="img/Maracuja.png" class="card-img-top" alt="Maracuja" height="200" style="object-fit: contain;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Suco de Maracujá</h6>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$15.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                            </div>
                        </div>
                    </section>

                    <asp:Repeater ID="rptBebidas" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                <article class="product card h-100">
                                    <img src='<%# Eval("ImagemUrl") %>' class="card-img-top" alt='<%# Eval("Nome") %>' style="height: 200px; object-fit: cover;" />
                                    <div class="card-body text-center d-flex flex-column">
                                        <h6 class="product-title"><%# Eval("Nome") %></h6>
                                        <p class="card-text text-muted small"><%# Eval("Descricao") %></p>
                                        <div class="mt-auto">
                                            <div class="product-price-wrap">
                                                <div class="product-price">R$ <%# Eval("Preco", "{0:N2}") %></div>
                                            </div>
                                            <a class="btn btn-primary mt-2" href="#">Adicionar ao Carrinho</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- Seção de Sobremesas -->
        <section id="sobremesas" class="section section-lg bg-gray-100">
            <div class="container">
                <div class="row">

                    <section id="sobremesas" class="section section-lg bg-gray-100">
                        <div class="container">
                            <h3><span class="d-inline-block">Sobremesas</span></h3>
                            <div class="row row-lg row-30 justify-content-center">

                                <!-- Card Torta de Amora -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp">
                                        <img src="img/TortaAmora.png" class="card-img-top" alt="tortaA" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Torta de Amora</h6>
                                            <p class="card-text text-muted small">Torta cremosa de amora.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$55.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Tiramisu Italiano -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".1s">
                                        <img src="img/Tiramisu.png" class="card-img-top" alt="Tiramisu" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Tiramisu Italiano</h6>
                                            <p class="card-text text-muted small">O clássico italiano com café e mascarpone.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$60.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Panna Cotta -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".2s">
                                        <img src="img/Panna.png" class="card-img-top" alt="Panna" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Panna Cotta de Frutas</h6>
                                            <p class="card-text text-muted small">Creme suave com calda de frutas vermelhas e biscoitos.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$55.00</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- Card Pudim -->
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <article class="product card h-100 wow fadeInUp" data-wow-delay=".3s">
                                        <img src="img/Pudim.png" class="card-img-top" alt="Brownie" height="200" style="object-fit: cover;" />
                                        <div class="card-body text-center d-flex flex-column">
                                            <h6 class="product-title">Pudim</h6>
                                            <p class="card-text text-muted small">Pudim suave de leite condensado.</p>
                                            <div class="mt-auto">
                                                <div class="product-price-wrap mb-3">
                                                    <div class="product-price">R$35.50</div>
                                                </div>
                                                <a class="button button-xs button-primary btn btn-primary" href="#">Adicionar ao Carrinho</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>

                            </div>
                        </div>
                    </section>


                    <asp:Repeater ID="rptSobremesas" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                <article class="product card h-100">
                                    <img src='<%# Eval("ImagemUrl") %>' class="card-img-top" alt='<%# Eval("Nome") %>' style="height: 200px; object-fit: cover;" />
                                    <div class="card-body text-center d-flex flex-column">
                                        <h6 class="product-title"><%# Eval("Nome") %></h6>
                                        <p class="card-text text-muted small"><%# Eval("Descricao") %></p>
                                        <div class="mt-auto">
                                            <div class="product-price-wrap">
                                                <div class="product-price">R$ <%# Eval("Preco", "{0:N2}") %></div>
                                            </div>
                                            <a class="btn btn-primary mt-2" href="#">Adicionar ao Carrinho</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

    </form>

    <!-- Footer -->
    <footer class="bg-dark text-center text-lg-start text-white">
        <div class="container p-4">
            <div class="row">

                <!-- Sobre Nós -->
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Sobre nós</h5>
                    <p>
                        Somos uma empresa dedicada a oferecer os melhores produtos e serviços para nossos clientes, sempre com
                        qualidade e compromisso.
                    </p>
                </div>

                <!-- Links do Site -->
                <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Links</h5>
                    <ul class="list-unstyled mb-0">
                        <li><a href="index.html" class="text-white">Home</a></li>
                        <li><a href="menu.html" class="text-white">Menu</a></li>
                        <li><a href="carrinho.html" class="text-white">Carrinho</a></li>
                    </ul>
                </div>

                <!-- Contato -->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 id="contact">Contato</h5>
                    <ul class="list-unstyled mb-0">
                        <li><i class="bi bi-geo-alt"></i>Rua Esplanada da Silva, 123, Alegre</li>
                        <li><i class="bi bi-telephone"></i>(28) 9934-5678</li>
                        <li><i class="bi bi-envelope"></i>PizzariaLaFlorença@gmail.com</li>
                    </ul>
                </div>

                <!-- Redes Sociais -->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-0">Siga-nos</h5>
                    <div class="mt-3">
                        <a href="#" class="text-white me-4"><i class="bi bi-facebook"></i>Facebook</a>
                        <a href="#" class="text-white me-4"><i class="bi bi-instagram"></i>Instagram</a>
                    </div>
                </div>

            </div>
        </div>

        <!-- Direitos Reservados -->
        <div class="text-center p-3 bg-secondary">
            © 2025 Todos os direitos reservados:
            <a class="text-white" href="#">La Florença Pizzaria</a>
        </div>
    </footer>

    <!-- Scripts Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
