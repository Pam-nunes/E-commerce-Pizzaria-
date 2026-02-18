using System;
using System.Web;
using System.Web.Security;

namespace Trabalho_ecommerce_teste
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // ============================
        // LOGIN DO CLIENTE / ADMIN
        // ============================
        protected void btnEntrarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtClienteEmail.Text.Trim();
                string senha = txtPassword.Text.Trim();

                if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(senha))
                {
                    lblMensagem.Text = "Você precisa preencher todos os campos!";
                    return;
                }

                Clientes cliente = ClienteDAO.BuscarPorEmail(email);

                if (cliente == null)
                {
                    lblMensagem.Text = "Usuário não encontrado!";
                    return;
                }

                if (cliente.IsBloqueado)
                {
                    lblMensagem.Text = "Sua conta está bloqueada!";
                    return;
                }

                var senhaHash = Sha1Hasher.GerarSha1(senha);

                if (senhaHash.Equals(cliente.SenhaHash))
                {
                    // Cria cookie de autenticação (não persistente)
                    if (senhaHash.Equals(cliente.SenhaHash))
                    {
                        // Define papel
                        string role = cliente.IsAdmin ? "Admin" : "Usuario";

                        // Cria ticket com papel dentro
                        FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                            1,
                            cliente.Email,
                            DateTime.Now,
                            DateTime.Now.AddMinutes(30),
                            false,
                            role
                        );

                        string encrypted = FormsAuthentication.Encrypt(ticket);
                        HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrypted);
                        Response.Cookies.Add(authCookie);

                        // Redirecionamento
                        if (cliente.IsAdmin)
                            Response.Redirect("~/adm/produto.aspx");
                        else
                            Response.Redirect("Default.aspx");

                        return;
                    }


                    // ================================
                    // REDIRECIONAMENTO BASEADO NO ADMIN
                    // ================================
                    if (cliente.IsAdmin)
                    {
                        Response.Redirect("~/adm/produto.aspx");
                        return;
                    }

                    // Usuário comum
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMensagem.Text = "Senha inválida!";
                }
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "Erro: " + ex.Message;
            }
        }

        // ============================
        // CADASTRO DE CLIENTE
        // ============================
        protected void btnCadastrarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = clientNameRegister.Text.Trim();
                string email = clientEmailRegister.Text.Trim();
                string senha = clientPasswordRegister.Text.Trim();
                string telefone = clientPhoneRegister.Text.Trim();

                if (string.IsNullOrEmpty(nome) ||
                    string.IsNullOrEmpty(email) ||
                    string.IsNullOrEmpty(senha))
                {
                    lblMensagem.Text = "Preencha todos os campos!";
                    return;
                }

                if (ClienteDAO.BuscarPorEmail(email) != null)
                {
                    lblMensagem.Text = "Já existe um cliente com este email!";
                    return;
                }

                string senhaHash = Sha1Hasher.GerarSha1(senha);

                Clientes novo = new Clientes
                {
                    Nome = nome,
                    Email = email,
                    SenhaHash = senhaHash,
                    Telefone = telefone,
                    IsAdmin = false,
                    IsBloqueado = false
                };

                ClienteDAO.Inserir(novo);

                lblMensagem.Text = "Cadastro realizado com sucesso!";
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "Erro ao cadastrar: " + ex.Message;
            }
        }
    }
}
