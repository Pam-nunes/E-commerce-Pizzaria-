select * from Produtos

-- Remover a coluna "Disponibilidade"
ALTER TABLE Produtos
DROP COLUMN Disponibilidade;

-- Adicionar a coluna "DataCadastro"
ALTER TABLE Produtos
ADD DataCadastro DATE;

ALTER TABLE Produtos
DROP CONSTRAINT DF__Produtos__Dispon__5535A963;
