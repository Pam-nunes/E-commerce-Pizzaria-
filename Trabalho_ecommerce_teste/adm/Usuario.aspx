<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Trabalho_ecommerce_teste.adm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Painel de Clientes</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="/css/style.css" />

    <link rel="stylesheet" href="../css/Usuario.css" />

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img class="brand-logo-dark" src="../img/Logo.png" alt="La Florença Logo" />
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="../Default.aspx">Home</a></li>
                <li class="nav-item active"><a class="nav-link" aria-current="page" href="../Menu.aspx">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="../Carrinho.aspx">Carrinho</a></li>
                <li class="nav-item"><a class="nav-link" href="../Login.aspx">Entrar</a></li>
                <li class="nav-item"><a class="nav-link" href="Produto.aspx">Produtos adm</a></li>
            </ul>
            <span class="navbar-text"></span>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="container">
            <h1>Gerenciamento de Clientes</h1>

            <div class="grid-section">
                <h2>Lista de Clientes</h2>

                <asp:GridView ID="GridClientes" runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="ClienteId"
                    OnRowCommand="GridClientes_RowCommand"
                    CssClass="tabela"
                    AlternatingRowStyle-BackColor="#f9f9f9">
                    <Columns>
                        <asp:BoundField DataField="ClienteId" HeaderText="ID" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
                        <asp:CheckBoxField DataField="IsBloqueado" HeaderText="Bloqueado" ItemStyle-HorizontalAlign="Center" />

                        <asp:ButtonField CommandName="bloquear" Text="Bloquear" />
                        <asp:ButtonField CommandName="desbloquear" Text="Desbloquear" />
                        <asp:ButtonField CommandName="editar" Text="Editar Dados" />
                    </Columns>
                </asp:GridView>
            </div>

            <hr />

            <div class="edit-section">
                <h2>Editar Cliente Selecionado</h2>

                <div class="form-group">
                    <asp:Label ID="lblId" runat="server" Text="ID:" />
                    <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Nome:" />
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email:" />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Telefone:" />
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </div>

                <br />
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar Alterações" OnClick="btnSalvar_Click" CssClass="btn-primary" />
            </div>

        </div>

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

    </form>
</body>
</html>
