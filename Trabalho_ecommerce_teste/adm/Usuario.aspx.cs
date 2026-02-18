using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
// Adicione as referências ao seu modelo de dados, se necessário

namespace Trabalho_ecommerce_teste.adm
{
    // Crie uma classe de modelo simples para demonstração (se não tiver uma)
   

    public partial class WebForm1 : System.Web.UI.Page
    {
        // Lista de clientes simulada (substitua isso pela sua lógica de acesso a dados)
        private List<Clientes> ListaClientes;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Carrega os dados na primeira vez que a página é carregada
                CarregarClientes();
            }
        }

        // --- 1. Lógica de Carregamento de Dados ---
        private void CarregarClientes()
        {
            // *** SIMULAÇÃO DE DADOS: Substitua por sua chamada ao BANDO DE DADOS ***
            ListaClientes = ObterClientesDoBancoDeDados();
            // *******************************************************************

            GridClientes.DataSource = ListaClientes;
            GridClientes.DataBind();
        }

        // Simula a obtenção de dados do banco
        private List<Clientes> ObterClientesDoBancoDeDados()
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            List<Clientes> lista = usuarioDAO.carregarUsuario();
            return lista;
        }



        // --- 2. Lógica de Comandos do GridView ---
        protected void GridClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // O DataKeyNames="ClienteId" no GridView permite obter a chave primária
            int clienteId = Convert.ToInt32(GridClientes.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);

            // Recarrega os dados do banco para ter a lista completa
            ListaClientes = ObterClientesDoBancoDeDados();
            Clientes clienteSelecionado = ListaClientes.FirstOrDefault(c => c.ClienteId == clienteId);

            if (clienteSelecionado == null) return;
             
            UsuarioDAO usuarioDAO=new UsuarioDAO();
            bool bloqueio;

            switch (e.CommandName.ToLower())
            {
                case "bloquear":
                   bloqueio = true;
                    usuarioDAO.MudarStatusBloqueio(clienteId, bloqueio);
                    clienteSelecionado.IsBloqueado = true;
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Cliente ID " + clienteId + " bloqueado com sucesso!');", true);
                    break;

                case "desbloquear":
                     bloqueio = false;
                    usuarioDAO.MudarStatusBloqueio(clienteId,bloqueio);
                    clienteSelecionado.IsBloqueado = false;
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Cliente ID " + clienteId + " desbloqueado com sucesso!');", true);
                    break;

                case "editar":
                    // Preenche os campos de edição
                    txtId.Text = clienteSelecionado.ClienteId.ToString();
                    txtNome.Text = clienteSelecionado.Nome;
                    txtEmail.Text = clienteSelecionado.Email;
                    txtTelefone.Text = clienteSelecionado.Telefone;
                    txtId.Enabled = false;
                    // Você pode usar o ScriptManager para rolar a página até a área de edição
                    break;
            }

            // Após qualquer alteração (bloquear/desbloquear), recarrega o grid
            CarregarClientes();
        }


        // --- 3. Lógica do Botão Salvar ---
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                // Mensagem de erro se nenhum cliente estiver selecionado para edição
                return;
            }

            try
            {
                int idCliente = Convert.ToInt32(txtId.Text);

                // Crie um objeto Cliente com os novos dados
                Clientes clienteAtualizado = new Clientes
                {
                    ClienteId = idCliente,
                    Nome = txtNome.Text,
                    Email = txtEmail.Text,
                    Telefone = txtTelefone.Text,
                    
                };
                ClienteDAO clienteDAO = new ClienteDAO();
                clienteDAO.atualizarCliente(clienteAtualizado);
                
                LimparCamposEdicao();
                CarregarClientes();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Cliente atualizado com sucesso!');", true);

            }
            catch (Exception ex)
            {
                // Tratar erro de conversão ou de banco de dados
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Erro ao salvar: " + ex.Message.Replace("'", "") + "');", true);
            }
        }

        private void LimparCamposEdicao()
        {
            txtId.Text = string.Empty;
            txtNome.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtTelefone.Text = string.Empty;
        }
    }
}