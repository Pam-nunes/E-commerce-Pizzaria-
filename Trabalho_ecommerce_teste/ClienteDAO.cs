using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Trabalho_ecommerce_teste
{
    public class ClienteDAO
    {
        

       

        // 1️⃣ BUSCAR CLIENTE POR EMAIL

        public static Clientes BuscarPorEmail(string email)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                return ctx.Clientes
                         .Where(c => c.Email == email)
                         .FirstOrDefault();
            }
        }




        // 3️⃣ CADASTRAR NOVO CLIENTE

        public static bool Cadastrar(Clientes cliente)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                ctx.Clientes.Add(cliente);  // adiciona ao contexto
                return ctx.SaveChanges() > 0; // salva no banco
            }
        }


        internal static void Inserir(Clientes novo){
            using (var ctx = new LaFlorencaEntities())
            {
                ctx.Clientes.Add(novo);
                ctx.SaveChanges();
            }
            
        
        }

        internal void atualizarCliente(Clientes clienteAtualizado)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                var cliente = ctx.Clientes.FirstOrDefault(c => c.ClienteId == clienteAtualizado.ClienteId);

                if (cliente != null)
                {
                    cliente.Nome = clienteAtualizado.Nome;
                    cliente.Telefone = clienteAtualizado.Telefone;
                    cliente.Email = clienteAtualizado.Email;

                    ctx.SaveChanges();
                }
            }
        }
    }
}
