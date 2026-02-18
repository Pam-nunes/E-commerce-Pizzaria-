using System;
using System.Collections.Generic;
using System.Linq;

namespace Trabalho_ecommerce_teste
{
    public class ProdutoDAO
    {
        // ===========================
        // CADASTRAR PRODUTO
        // ===========================
        public static string CadastrarProduto(Produtos produto)
        {
            string mensagem = "";

            try
            {
                using (var ctx = new LaFlorencaEntities())
                {
                    // Preenche automaticamente a data e estoque se não vierem definidos
                    if (produto.Data_Cadastro == default(DateTime))
                        produto.Data_Cadastro = DateTime.Now;

                    if (produto.Estoque <= 0)
                        produto.Estoque = 100;

                    ctx.Produtos.Add(produto);
                    ctx.SaveChanges();

                    mensagem = $"O produto '{produto.Nome}' foi cadastrado com sucesso!";
                }
            }
            catch (Exception ex)
            {
                mensagem = "Erro ao cadastrar produto: " + ex.Message;
            }

            return mensagem;
        }

        // ===========================
        // LISTAR TODOS OS PRODUTOS
        // ===========================
        public static List<Produtos> ListarProdutos()
        {
            using (var ctx = new LaFlorencaEntities())
            {
                // Inclui a categoria relacionada
                var lista = ctx.Produtos.Include("Categorias").ToList();
                return lista;
            }
        }

        // ===========================
        // LISTAR PRODUTOS POR CATEGORIA
        // ===========================
        public static List<Produtos> ListarPorCategoria(int categoriaId)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                var lista = ctx.Produtos
                    .Where(p => p.CategoriaId == categoriaId)
                    .OrderBy(p => p.Nome)
                    .ToList();

                return lista;
            }
        }

        // ===========================
        // VISUALIZAR UM PRODUTO
        // ===========================
        public static Produtos VisualizarProduto(int id)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                return ctx.Produtos.FirstOrDefault(p => p.ProdutoId == id);
            }
        }

        // ===========================
        // ALTERAR PRODUTO
        // ===========================
        public static string AlterarProduto(Produtos produto)
        {
            string mensagem = "";

            try
            {
                using (var ctx = new LaFlorencaEntities())
                {
                    Produtos produtoAlterado = ctx.Produtos
                        .FirstOrDefault(p => p.ProdutoId == produto.ProdutoId);

                    if (produtoAlterado != null)
                    {
                        produtoAlterado.Nome = produto.Nome;
                        produtoAlterado.Descricao = produto.Descricao;
                        produtoAlterado.Preco = produto.Preco;
                        produtoAlterado.ImagemUrl = produto.ImagemUrl;
                        produtoAlterado.Estoque = produto.Estoque;
                        produtoAlterado.CategoriaId = produto.CategoriaId;

                        ctx.SaveChanges();
                        mensagem = "Produto alterado com sucesso!";
                    }
                    else
                    {
                        mensagem = "Produto não encontrado para alteração.";
                    }
                }
            }
            catch (Exception ex)
            {
                mensagem = "Erro ao alterar produto: " + ex.Message;
            }

            return mensagem;
        }

        // ===========================
        // EXCLUIR PRODUTO
        // ===========================
        public static string ExcluirProduto(int id)
        {
            string mensagem = "";

            try
            {
                using (var ctx = new LaFlorencaEntities())
                {
                    Produtos produto = ctx.Produtos.FirstOrDefault(p => p.ProdutoId == id);
                    if (produto != null)
                    {
                        ctx.Produtos.Remove(produto);
                        ctx.SaveChanges();
                        mensagem = "Produto excluído com sucesso!";
                    }
                    else
                    {
                        mensagem = "Produto não encontrado.";
                    }
                }
            }
            catch (Exception ex)
            {
                mensagem = "Erro ao excluir produto: " + ex.Message;
            }

            return mensagem;
        }

        // ===========================
        // LISTAR TODAS AS CATEGORIAS
        // ===========================
        public static List<Categorias> ListarCategorias()
        {
            using (var ctx = new LaFlorencaEntities())
            {
                return ctx.Categorias.OrderBy(c => c.Nome).ToList();
            }
        }

        // ===========================
        // OBTER NOME DA CATEGORIA
        // ===========================
        public static string ObterNomeCategoria(int categoriaId)
        {
            using (var ctx = new LaFlorencaEntities())
            {
                var cat = ctx.Categorias.FirstOrDefault(c => c.CategoriaId == categoriaId);
                return cat != null ? cat.Nome : "Categoria não encontrada";
            }
        }
    }
}

