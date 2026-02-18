<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrinho.aspx.cs" Inherits="Trabalho_ecommerce_teste.Carrinho" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meu Pedido e Status</title>

    <!-- Importando o Bootstrap para usar seus componentes prontos e responsivos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Ícones do Bootstrap (usados em botões e menus) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Fonte Poppins (para padronizar o texto com estilo mais moderno) -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Meu arquivo CSS personalizado -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>


    <!-- Navbar principal (menu de navegação do site) -->
    <!-- Aqui ficam os links para as páginas principais -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Logo da pizzaria -->
        <img class="brand-logo-dark" src="img/Logo.png" alt="La Florença Logo" />

        <!-- Botão do menu que aparece no celular -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Itens do menu -->
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="Default.aspx">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Menu.aspx">Menu</a></li>
                <li class="nav-item carrinho"><a class="nav-link" href="Carrinho.aspx">Carrinho</a></li>
                <li class="nav-item"><a class="nav-link" href="Login.aspx">Entrar</a></li>
            </ul>
        </div>
    </nav>


    <!-- Conteúdo principal da página -->
    <main>
        <section class="py-5 bg-light">
            <div class="container">
                <!-- Título principal da página -->
                <h1 class="mb-5 text-center" style="color: var(--vermelho-principal);">Pedidos e Status</h1>

                <!-- Abas de navegação entre os três painéis principais -->
                <ul class="nav nav-tabs nav-justified mb-4 shadow-sm" id="painelTabs" role="tablist">
                    <!-- Aba 1: Carrinho -->
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="carrinho-tab" data-bs-toggle="tab" data-bs-target="#carrinho" type="button" role="tab" aria-controls="carrinho" aria-selected="true">
                            <i class="bi bi-basket me-2"></i>Meu Pedido (Carrinho)
                        </button>
                    </li>

                    <!-- Aba 2: Status do pedido -->
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="status-tab" data-bs-toggle="tab" data-bs-target="#status" type="button" role="tab" aria-controls="status" aria-selected="false">
                            <i class="bi bi-clock-history me-2"></i>Status do Último Pedido
                        </button>
                    </li>

                    <!-- Aba 3: Histórico -->
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="historico-tab" data-bs-toggle="tab" data-bs-target="#historico" type="button" role="tab" aria-controls="historico" aria-selected="false">
                            <i class="bi bi-card-checklist me-2"></i>Histórico de Pedidos
                        </button>
                    </li>
                </ul>


                <!-- Conteúdo de cada aba -->
                <div class="tab-content" id="painelTabsContent">

                    <!-- ------------------- ABA DO CARRINHO ------------------- -->
                    <div class="tab-pane fade show active" id="carrinho" role="tabpanel" aria-labelledby="carrinho-tab">
                        <div class="row g-4">
                            <div class="col-lg-8">

                                <!-- Card com item do carrinho -->
                                <asp:Repeater ID="rptCarrinho" runat="server">
    <ItemTemplate>

        <div class="card mb-3 shadow-sm border-0">
            <div class="card-body">
                <div class="row align-items-center">

                    <!-- Imagem do produto -->
                    <div class="col-md-2 col-3">
                        <img src='<%# Eval("Imagem") %>' class="img-fluid cart-item-img" />
                    </div>

                    <!-- Nome -->
                    <div class="col-md-4 col-9">
                        <h5 class="mb-0"><%# Eval("Nome") %></h5>
                        <small class="text-muted">Item adicionado ao carrinho.</small>
                    </div>

                    <!-- Campo de quantidade -->
                    <div class="col-md-2 col-4 mt-3 mt-md-0">
                        <asp:TextBox ID="txtQtd" runat="server" CssClass="form-control"
                                     Text='<%# Eval("Quantidade") %>' />
                    </div>

                    <!-- Preço -->
                    <div class="col-md-2 col-4 text-center mt-3 mt-md-0">
                        <span class="fw-bold">R$ <%# Eval("Preco") %></span>
                    </div>

                    <!-- Botão remover -->
                    <div class="col-md-2 col-4 text-end mt-3 mt-md-0">
                        <asp:LinkButton runat="server" CssClass="btn btn-outline-danger btn-sm"
                                        CommandName="Remover" CommandArgument='<%# Eval("Nome") %>'>
                            <i class="bi bi-trash"></i>
                        </asp:LinkButton>
                    </div>

                </div>
            </div>
        </div>

    </ItemTemplate>
</asp:Repeater>


                                <!-- Link para adicionar mais itens -->
                                <a href="menu.html" class="btn btn-outline-secondary mt-3">
                                    <i class="bi bi-plus-circle me-2"></i>Adicionar Mais Itens ao Pedido
                                </a>
                            </div>

                            <!-- Resumo do pedido (lado direito) -->
                            <div class="col-lg-4">
                                <div class="card summary-card p-3 shadow-sm border-0">
                                    <h4 class="mb-3">Resumo do Pedido</h4>
                                    <ul class="list-group list-group-flush mb-3">
                                        <li class="list-group-item d-flex justify-content-between bg-transparent px-0">Subtotal: <span>R$ 150,00</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between bg-transparent px-0">Frete: <span>R$ 10,00</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between bg-transparent px-0 pt-3 border-top">
                                            <span class="fw-bold fs-5">Total:</span>
                                            <span class="fw-bold fs-5 text-success">R$ 160,00</span>
                                        </li>
                                    </ul>

                                    <!-- Botão para finalizar o pedido (abre modal) -->
                                    <button class="btn btn-principal btn-lg w-100" data-bs-toggle="modal" data-bs-target="#checkoutModal">
                                        Finalizar Pedido 
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- ------------------- ABA DE STATUS ------------------- -->
                    <div class="tab-pane fade" id="status" role="tabpanel" aria-labelledby="status-tab">
                        <div class="card p-4 shadow-sm border-0">
                            <h4 class="mb-4">Acompanhando Pedido <span class="badge bg-warning text-dark">#9876</span></h4>
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="timeline">

                                        <!-- Linha do tempo com as etapas do pedido -->
                                        <div class="timeline-item">
                                            <div class="timeline-item-dot bg-success"></div>
                                            <p class="fw-bold mb-1 text-success">Pedido Recebido</p>
                                            <p class="text-muted small">01/01/2025 às 19:00 - Em validação.</p>
                                        </div>

                                        <div class="timeline-item active">
                                            <div class="timeline-item-dot"></div>
                                            <p class="fw-bold mb-1" style="color: var(--vermelho-principal);">Em Preparação</p>
                                            <p class="text-muted small">01/01/2025 às 19:15 - Pizza sendo montada e indo para o forno!</p>
                                        </div>

                                        <div class="timeline-item">
                                            <div class="timeline-item-dot"></div>
                                            <p class="text-muted fw-bold mb-1">Saiu para Entrega</p>
                                            <p class="text-muted small">Previsão: 19:50</p>
                                        </div>

                                        <div class="timeline-item">
                                            <div class="timeline-item-dot"></div>
                                            <p class="text-muted fw-bold mb-1">Entregue</p>
                                            <p class="text-muted small">Aguardando a sua avaliação!</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- ------------------- ABA DO HISTÓRICO ------------------- -->
                    <div class="tab-pane fade" id="historico" role="tabpanel" aria-labelledby="historico-tab">
                        <div class="card p-4 shadow-sm border-0">
                            <h4 class="mb-4">Histórico de Pedidos (Acompanhar Histórico)</h4>

                            <!-- Tabela com histórico de pedidos -->
                            <div class="table-responsive">
                                <table class="table table-striped table-hover align-middle">
                                    <thead class="table-dark" style="background-color: var(--vermelho-principal) !important;">
                                        <tr>
                                            <th scope="col">ID Pedido</th>
                                            <th scope="col">Data</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">#9876</th>
                                            <td>01/01/2025</td>
                                            <td>R$ 65,00</td>
                                            <td><span class="badge bg-warning text-dark">Em Preparação</span></td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-info" onclick="document.getElementById('status-tab').click();">Ver Status</button></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#9875</th>
                                            <td>28/12/2024</td>
                                            <td>R$ 98,50</td>
                                            <td><span class="badge bg-success">Entregue</span></td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-secondary">Ver Detalhes</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>


    <!-- Modal de confirmação do pedido -->
    <div class="modal fade" id="checkoutModal" tabindex="-1" aria-labelledby="checkoutModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <!-- Cabeçalho do modal -->
                <div class="modal-header bg-success text-white">
                    <h5 class="modal-title" id="checkoutModalLabel">Pedido Confirmado!</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <!-- Corpo do modal -->
                <div class="modal-body">
                    <p class="fs-5">Seu pedido foi registrado com sucesso e está sendo enviado para a cozinha.</p>
                    <p>Acompanhe o status na aba <strong>"Status do Último Pedido"</strong>.</p>
                </div>

                <!-- Rodapé do modal -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-principal" data-bs-dismiss="modal" onclick="document.getElementById('status-tab').click();">Acompanhar Pedido</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Rodapé do site -->
    <footer class="bg-dark text-center text-lg-start text-white">
        <div class="container p-4">
            <div class="row">

                <!-- Coluna Sobre nós -->
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Sobre nós</h5>
                    <p>Somos uma empresa dedicada a oferecer os melhores produtos e serviços para nossos clientes, sempre com qualidade e compromisso.</p>
                </div>

                <!-- Coluna de links -->
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

                <!-- Coluna redes sociais -->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-0">Siga-nos</h5>
                    <div class="mt-3">
                        <a href="#" class="text-white me-4"><i class="bi bi-facebook"></i>Facebook</a>
                        <a href="#" class="text-white me-4"><i class="bi bi-instagram"></i>Instagram</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Créditos do rodapé -->
        <div class="text-center p-3 bg-secondary">
            © 2025 Todos os direitos reservados:
            <a class="text-white" href="#">La Florença Pizzaria</a>
        </div>
    </footer>


    <!-- Scripts Bootstrap e JavaScript personalizado -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
