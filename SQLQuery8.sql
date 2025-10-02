SELECT i.Nombre AS Artista,
       COUNT(DISTINCT c1.Id) AS Canciones_Compuestas,
       COUNT(DISTINCT c2.Id) AS Canciones_Interpretadas
FROM Interprete i
JOIN Compositor co ON i.Nombre = co.Nombre
LEFT JOIN CancionCompositor cc ON co.Id = cc.IdCompositor
LEFT JOIN Cancion c1 ON cc.IdCancion = c1.Id
LEFT JOIN Interpretacion it ON i.Id = it.IdInterprete
LEFT JOIN Cancion c2 ON it.IdCancion = c2.Id
GROUP BY i.Nombre;