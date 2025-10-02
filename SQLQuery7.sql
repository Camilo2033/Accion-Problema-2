SELECT c.Titulo, i.Nombre AS Interprete
FROM Cancion c
JOIN Interpretacion it ON c.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
WHERE c.Titulo IN ('Candilejas', 'Malaguena');
