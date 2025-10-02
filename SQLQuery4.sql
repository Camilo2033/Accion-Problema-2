SELECT i.Nombre AS Interprete, r.Ritmo
FROM Cancion c
JOIN Interpretacion it ON c.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
JOIN Ritmo r ON it.IdRitmo = r.Id
WHERE c.Titulo = 'Lluvia';