Esta stored procedure adiciona um novo livro à tabela Livro com tratamento de erros.

Parâmetros de entrada:
 titulo_livro
editora_id
ano_publicacao
numero_paginas
categoria_id

Parâmetro de saída:
mensagem: Mensagem de erro ou sucesso depois da execução.

CREATE PROCEDURE sp_AdicionarLivro(IN titulo_livro VARCHAR(255), IN editora_id INT, IN ano_publicacao INT, IN numero_paginas INT, IN categoria_id INT, OUT mensagem VARCHAR(255))
BEGIN
Verifica se já existe um livro com o mesmo título.
Se existir, retorna uma mensagem de erro.
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
        SET mensagem = 'Erro: Já existe um livro com esse título.';
    END;

Insere o novo livro na tabela Livro.
    INSERT INTO Livro (Titulo, Editora_ID, Ano_Publicacao, Numero_Paginas, Categoria_ID)
    VALUES (titulo_livro, editora_id, ano_publicacao, numero_paginas, categoria_id);

Define uma mensagem de sucesso após a inserção.
    SET mensagem = 'Livro adicionado com sucesso.';
END;
