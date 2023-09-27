CREATE PROCEDURE sp_AdicionarLivro(IN titulo_livro VARCHAR(255), IN editora_id INT, IN ano_publicacao INT, IN numero_paginas INT, IN categoria_id INT, OUT mensagem VARCHAR(255))
BEGIN
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
        SET mensagem = 'Erro: Já existe um livro com esse título.';
    END;

    INSERT INTO Livro (Titulo, Editora_ID, Ano_Publicacao, Numero_Paginas, Categoria_ID)
    VALUES (titulo_livro, editora_id, ano_publicacao, numero_paginas, categoria_id);

    SET mensagem = 'Livro adicionado com sucesso.';
END;
