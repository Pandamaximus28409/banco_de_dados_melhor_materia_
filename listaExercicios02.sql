CREATE PROCEDURE sp_AutorMaisAntigo(OUT nome_autor VARCHAR(255))
BEGIN
    SELECT CONCAT(Nome, ' ', Sobrenome) INTO nome_autor
    FROM Autor
    ORDER BY Data_Nascimento ASC
    LIMIT 1;
END;
