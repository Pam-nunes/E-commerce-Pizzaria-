<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="Trabalho_ecommerce_teste.Produto1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Pagina produto ADM</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="/css/style.css"/>

    <link rel="stylesheet" href="../css/Produto.css" />

</head>

<body id="body-Produto">

    <form id="form1" runat="server">

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
                    <li class="nav-item"><a class="nav-link" href="Usuario.aspx">Painel ADM</a></li>
                </ul>
                <span class="navbar-text"></span>
            </div>
        </nav>


        <div class="container produto-card">
            <h2>Cadastro de Produtos</h2>

            <div class="form-group">
                <label for="txtNome">Nome do Produto:</label>
                <asp:TextBox ID="txtNome" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtDescricao">Descrição:</label>
                <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Rows="3" />
            </div>

            <div class="form-group">
                <label for="txtPreco">Preço:</label>
                <asp:TextBox ID="txtPreco" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtImagemUrl">URL da Imagem:</label>
                <asp:TextBox ID="txtImagemUrl" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtEstoque">Estoque:</label>
                <asp:TextBox ID="txtEstoque" runat="server" Text="100" />
            </div>

            <div class="form-group">
                <label for="ddlCategoria">Categoria:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Selecione uma categoria" Value="" />
                    <asp:ListItem Text="Pizza Artesanal" Value="1" />
                    <asp:ListItem Text="Pizza Doce" Value="2" />
                    <asp:ListItem Text="Bebidas" Value="3" />
                    <asp:ListItem Text="Sobremesas" Value="4" />
                </asp:DropDownList>

            </div>

            <asp:HiddenField ID="hfProdutoId" runat="server" />

            <div>
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-cadastrar" OnClick="btnCadastrar_Click" />
                <asp:Button ID="btnLimpar" runat="server" Text="Limpar" CssClass="btn btn-limpar" OnClick="btnLimpar_Click" />
            </div>

            <br />
            <asp:Label ID="lblMensagem" runat="server" ForeColor="Green"></asp:Label>

            <div class="grid">
                <h3>Lista de Produtos</h3>
                <asp:GridView ID="gvProdutos" runat="server" AutoGenerateColumns="False" CssClass="table"
                    OnRowCommand="gvProdutos_RowCommand">

                    <Columns>
                        <asp:BoundField DataField="ProdutoId" HeaderText="ID" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Preco" HeaderText="Preço" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="Estoque" HeaderText="Estoque" />
                        <asp:BoundField DataField="Data_Cadastro" HeaderText="Data Cadastro" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:TemplateField HeaderText="Categoria">
                            <ItemTemplate>
                                <%# Trabalho_ecommerce_teste.ProdutoDAO.ObterNomeCategoria(Convert.ToInt32(Eval("CategoriaId"))) %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField CommandName="EditarProduto" Text="Editar" ButtonType="Button" />
                        <asp:ButtonField CommandName="ExcluirProduto" Text="Excluir" ButtonType="Button" />
                    </Columns>
                </asp:GridView>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>
