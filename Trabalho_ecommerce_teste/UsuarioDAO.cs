using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trabalho_ecommerce_teste
{
    public class UsuarioDAO
    {
        internal List<Clientes> carregarUsuario()
        {
            using (var context = new LaFlorencaEntities())
            {
                return context.Clientes.ToList();
            }
        }

        internal void MudarStatusBloqueio(int idCliente, bool bloqueio)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                var cliente = ctx.Clientes.Find(idCliente);

                if (cliente != null)
                {
                    cliente.IsBloqueado = bloqueio;
                    ctx.SaveChanges();
                }
            }
        }

    }
}