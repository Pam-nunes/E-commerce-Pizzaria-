# 🍕 Sistema Completo de E-commerce — La Florença Pizzaria

## 👥 Participantes do Grupo
- **Pamellâ da Silva Nunes Batista**
- **Maria Luiza Ramos Caliman**
- **Mikael Vieira Casoti**

---

## 📌 Sobre o Projeto
Este repositório documenta o desenvolvimento completo (**front-end e back-end**) do sistema de e-commerce da pizzaria fictícia **La Florença**, desenvolvido como **projeto acadêmico**.

O sistema foi construído utilizando **ASP.NET Web Forms**, **Entity Framework (Database First)** e uma interface moderna desenvolvida com **HTML, CSS, Bootstrap e JavaScript**.

O objetivo principal é demonstrar a criação de um **e-commerce funcional**, contemplando cadastro de produtos, carrinho de compras, gerenciamento de clientes e pedidos, além de uma interface responsiva e organizada.

---

## 🔐 Tipos de Usuário

| Tipo  | Login            | Senha     |
|------|------------------|-----------|
| ADMIN | admin@admin.com | admin123 |

---

## 🎯 Objetivo Geral
Implementar um sistema de e-commerce completo, incluindo:

- Interface web responsiva e organizada  
- Catálogo dinâmico de produtos por categoria  
- Carrinho de compras funcional com atualização visual  
- Controle de pedidos e histórico  
- Sistema completo de **CRUD de produtos**  
- Cadastro e gerenciamento de clientes  
- Integração com banco de dados **SQL Server** via **Entity Framework**

---

## ⚙️ Funcionalidades do Sistema

### 🖥️ Front-end

#### Interface e Navegação
- Layout responsivo com **Bootstrap 5.3**
- Navegação entre **Home**, **Menu**, **Carrinho** e **Login**
- Carrossel com imagens promocionais
- Seção de produtos em destaque
- Rodapé informativo com contatos e links úteis

#### Páginas Implementadas
- `Default.aspx` — Página inicial  
- `Menu.aspx` — Catálogo de produtos  
- `Carrinho.aspx` — Visualização do carrinho  
- `Login.aspx` e `Cadastro.aspx` — *em desenvolvimento*

#### Recursos de UI
- Cards de produtos com imagem e preço
- Ícones modernos do Bootstrap
- Timeline visual para status de pedidos
- Modal para confirmação de compra

---

### 🧩 Back-end

#### Gerenciamento de Produtos
- Cadastro, edição e exclusão
- Listagem geral e filtrada por categoria
- Controle de estoque
- Data de criação automática

#### Gerenciamento de Clientes
- Cadastro de novos usuários
- Login via e-mail
- Controle de permissões (**admin / cliente**)

#### Pedidos
- Estrutura completa de criação de pedidos
- Cálculo automático do valor total
- Histórico de pedidos por cliente

#### DAO Implementados
- `ClienteDAO`
- `ProdutoDAO`
- `AdmDAO` *(em desenvolvimento)*

---

## 🛠️ Tecnologias Utilizadas

### 🎨 Front-end
- HTML5  
- CSS3  
- Bootstrap 5.3  
- JavaScript  

### ⚙️ Back-end
- ASP.NET Web Forms  
- C#  
- Entity Framework 6  

### 🗄️ Banco de Dados
- SQL Server / LocalDB  
- Modelo: `LaFlorencaEntities.edmx`

---

## 🚀 Passos para Execução

### 📌 Pré-requisitos
- Visual Studio 2022 ou superior  
- SQL Server ou LocalDB  
- .NET Framework 4.7 ou superior  

### 📥 Clonar o Repositório
```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
