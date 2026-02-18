using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trabalho_ecommerce_teste;

namespace Trabalho_ecommerce_teste
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarProdutosPorCategoria();
            }
        }

        private void CarregarProdutosPorCategoria()
        {
            var todosProdutos = ProdutoDAO.ListarProdutos();

            rptPizzaArtesanal.DataSource = todosProdutos.Where(p => p.CategoriaId == 1).ToList();
            rptPizzaArtesanal.DataBind();

            rptPizzaDoce.DataSource = todosProdutos.Where(p => p.CategoriaId == 2).ToList();
            rptPizzaDoce.DataBind();

            rptBebidas.DataSource = todosProdutos.Where(p => p.CategoriaId == 3).ToList();
            rptBebidas.DataBind();

            rptSobremesas.DataSource = todosProdutos.Where(p => p.CategoriaId == 4).ToList();
            rptSobremesas.DataBind();
        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {

        }
    }
}


