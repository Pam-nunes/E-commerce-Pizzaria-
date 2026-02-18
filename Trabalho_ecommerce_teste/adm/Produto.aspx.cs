using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_ecommerce_teste
{
    public partial class Produto1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Login.aspx");
                    return;
                }
                CarregarProdutos();
            }
        }

        private void CarregarProdutos()
        {
            gvProdutos.DataSource = ProdutoDAO.ListarProdutos();
            gvProdutos.DataBind();
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                // Validações básicas
                if (string.IsNullOrWhiteSpace(txtNome.Text) ||
                    string.IsNullOrWhiteSpace(txtPreco.Text) ||
                    string.IsNullOrWhiteSpace(txtEstoque.Text) ||
                    string.IsNullOrWhiteSpace(DropDownList1.SelectedValue))
                {
                    lblMensagem.ForeColor = System.Drawing.Color.Red;
                    lblMensagem.Text = "Por favor, preencha todos os campos obrigatórios e selecione uma categoria.";
                    return;
                }

                // Tentativa de conversão segura
                if (!decimal.TryParse(txtPreco.Text, out decimal preco))
                {
                    lblMensagem.ForeColor = System.Drawing.Color.Red;
                    lblMensagem.Text = "Preço inválido. Use números com ponto ou vírgula.";
                    return;
                }

                if (!int.TryParse(txtEstoque.Text, out int estoque))
                {
                    lblMensagem.ForeColor = System.Drawing.Color.Red;
                    lblMensagem.Text = "Estoque inválido. Digite um número inteiro.";
                    return;
                }

                if (!int.TryParse(DropDownList1.SelectedValue, out int categoriaId))
                {
                    lblMensagem.ForeColor = System.Drawing.Color.Red;
                    lblMensagem.Text = "Selecione uma categoria válida.";
                    return;
                }

                Produtos produto = new Produtos
                {
                    Nome = txtNome.Text.Trim(),
                    Descricao = txtDescricao.Text.Trim(),
                    Preco = preco,
                    ImagemUrl = txtImagemUrl.Text.Trim(),
                    Estoque = estoque,
                    CategoriaId = categoriaId,
                    Data_Cadastro = DateTime.Now
                };

                string mensagem;

                if (string.IsNullOrEmpty(hfProdutoId.Value))
                {
                    // Novo cadastro
                    mensagem = ProdutoDAO.CadastrarProduto(produto);
                }
                else
                {
                    // Atualização
                    produto.ProdutoId = int.Parse(hfProdutoId.Value);
                    mensagem = ProdutoDAO.AlterarProduto(produto);
                }

                lblMensagem.ForeColor = System.Drawing.Color.Green;
                lblMensagem.Text = mensagem;

                LimparCampos();
                CarregarProdutos();
            }
            catch (Exception ex)
            {
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = "Erro ao cadastrar o produto: " + ex.Message;
            }

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }

        private void LimparCampos()
        {
            txtNome.Text = "";
            txtDescricao.Text = "";
            txtPreco.Text = "";
            txtImagemUrl.Text = "";
            txtEstoque.Text = "100";
            hfProdutoId.Value = "";
            lblMensagem.Text = "";
            btnCadastrar.Text = "Cadastrar";
        }

        protected void gvProdutos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            int produtoId = Convert.ToInt32(gvProdutos.Rows[index].Cells[0].Text);
            btnCadastrar.Text = "Cadastrar";

            if (e.CommandName == "EditarProduto")
            {
                var produto = ProdutoDAO.VisualizarProduto(produtoId);
                if (produto != null)
                {
                    btnCadastrar.Text = "Alterar";
                    hfProdutoId.Value = produto.ProdutoId.ToString();
                    txtNome.Text = produto.Nome;
                    txtDescricao.Text = produto.Descricao;
                    txtPreco.Text = produto.Preco.ToString();
                    txtImagemUrl.Text = produto.ImagemUrl;
                    txtEstoque.Text = produto.Estoque.ToString();
                }
            }   
            else if (e.CommandName == "ExcluirProduto")
            {
                string msg = ProdutoDAO.ExcluirProduto(produtoId);
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = msg;
                CarregarProdutos();
            }

        }
    }
}