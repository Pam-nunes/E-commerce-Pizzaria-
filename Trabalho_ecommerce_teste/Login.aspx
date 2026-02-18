<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trabalho_ecommerce_teste.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">

                <a class="navbar-brand" href="Default.aspx">
                    <img class="brand-logo-dark" src="img/Logo.png" alt="La Florença Logo" />
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>

                </button>

                <div class="collapse navbar-collapse" id="navbarContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="Default.aspx">Home</a></li>

                        <li class="nav-item"><a class="nav-link" href="Menu.aspx">Menu</a></li>
                        <li class="nav-item"><a class="nav-link" href="Carrinho.aspx">Carrinho</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Login.aspx">Entrar</a></li>
                    </ul>
                </div>

            </div>
        </nav>

        <main>
            <section class="section bg-gray-100 py-5">
                <div class="container">
                    <h2 class="section-title text-center mb-5">- Acesso ao site -</h2>


                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10">
                            <div class="login-card p-4 shadow-lg rounded">
                                <ul class="nav nav-pills nav-fill mb-4"
                                    id="roleTabs" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="Button1" data-bs-toggle="pill" data-bs-target="#clienteContent" type="button" role="tab" aria-controls="clienteContent" aria-selected="true"
                                            runat="server">
                                            <%-- ALTERAÇÃO AQUI: runat="server" --%>

                                            <i class="bi bi-person-fill me-2"></i>Cliente
                                        </button>

                                    </li>
                                    
                                </ul>

                                <div class="tab-content" id="roleTabsContent">

                                    <div class="tab-pane fade show active" id="clienteContent" role="tabpanel" aria-labelledby="cliente-tab"
                                        runat="server">
                                        <%-- ALTERAÇÃO AQUI: runat="server" --%>

                                        <h4 class="text-center mb-4 text-primary">Acesso Cliente</h4>


                                        <ul class="nav nav-tabs justify-content-center mb-4" id="clientSubTabs" role="tablist">
                                            <li class="nav-item" role="presentation">

                                                <button class="nav-link active" id="clientLogin-tab" data-bs-toggle="tab" data-bs-target="#clientLogin" type="button" role="tab" aria-controls="clientLogin" aria-selected="true">Entrar</button>
                                            </li>

                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="clientRegister-tab" data-bs-toggle="tab" data-bs-target="#clientRegister" type="button" role="tab" aria-controls="clientRegister" aria-selected="false">Cadastrar</button>

                                            </li>
                                        </ul>

                                        <div class="tab-content" id="clientSubTabsContent">


                                            <div class="tab-pane fade show active" id="clientLogin" role="tabpanel" aria-labelledby="clientLogin-tab">

                                                <div class="mb-3">

                                                    <label class="form-label">Email</label>

                                                    <asp:TextBox ID="txtClienteEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                                </div>


                                                <div class="mb-4">
                                                    <label class="form-label">Senha</label>

                                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:Label ID="lblMensagem" runat="server" CssClass="text-danger mt-2"></asp:Label>

                                                </div>

                                                <asp:Button ID="btnEntrarCliente"
                                                    CssClass="btn btn-danger w-100"
                                                    runat="server"
                                                    Text="Entrar como Cliente"
                                                    OnClick="btnEntrarCliente_Click" />

                                                

                                              
                                            </div>


                                            <div class="tab-pane fade" id="clientRegister" role="tabpanel" aria-labelledby="clientRegister-tab">
                                                <div class="mb-3">

                                                    <label class="form-label">Nome Completo</label>
                                                    <asp:TextBox ID="clientNameRegister" CssClass="form-control" runat="server"></asp:TextBox>

                                                </div>

                                                <div class="mb-3">

                                                    <label class="form-label">Email</label>
                                                    <asp:TextBox ID="clientEmailRegister" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>

                                                </div>

                                                <div class="mb-3">

                                                    <label class="form-label">Telefone</label>
                                                    <asp:TextBox ID="clientPhoneRegister" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>

                                                </div>


                                                <div class="mb-3">

                                                    <label class="form-label">Criar Senha</label>
                                                    <asp:TextBox
                                                        ID="clientPasswordRegister" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>



                                                <asp:Button
                                                    ID="btnCadastrarCliente" CssClass="btn btn-success w-100" OnClick="btnCadastrarCliente_Click" runat="server" Text="Cadastrar" />
                                            </div>

                                        </div>

                                    </div>

                                    


                            </div>
                        </div>
                    </div>
                    </div>

               
            </section>

        </main>

        <footer class="bg-dark text-center text-lg-start text-white mt-5">
            <div class="container p-4">
                <div class="row">

                    <div class="col-lg-4 col-md-6 mb-4">
                        <h5>Sobre nós</h5>

                        <p>Somos uma empresa dedicada a oferecer qualidade e compromisso.</p>
                    </div>

                    <div class="col-lg-2 col-md-6 mb-4">
                        <h5>Links</h5>

                        <ul class="list-unstyled">
                            <li><a href="Default.aspx" class="text-white text-decoration-none">Home</a></li>
                            <li><a href="Menu.aspx" class="text-white text-decoration-none">Menu</a></li>

                            <li><a href="Carrinho.aspx" class="text-white text-decoration-none">Carrinho</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">

                        <h5>Contato</h5>
                        <ul class="list-unstyled">
                            <li><i class="bi bi-geo-alt-fill me-2"></i>Rua Exemplo, 123</li>
                            <li><i class="bi bi-telephone-fill me-2"></i>(28) 9999-0000</li>

                            <li><i class="bi bi-envelope-fill me-2"></i>pizzaria@gmail.com</li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">

                        <h5>Siga-nos</h5>
                        <div class="mt-3">
                            <a href="#" class="text-white me-4 fs-4 text-decoration-none"><i class="bi bi-facebook"></i></a>

                            <a href="#" class="text-white me-4 fs-4 text-decoration-none"><i class="bi bi-instagram"></i></a>
                        </div>
                    </div>

                </div>
            </div>

            <div class="text-center 
    p-3 text-secondary"
                style="background-color: rgba(0, 0, 0, 0.2);">
                © 2025 - La Florença Pizzaria
            </div>
        </footer>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
