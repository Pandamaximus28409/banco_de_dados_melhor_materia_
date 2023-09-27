CREATE PROCEDURE sp_LivrosAteAno(IN ano_limite INT)
BEGIN
    SELECT Titulo
    FROM Livro
    WHERE Ano_Publicacao <= ano_limite;
END;
