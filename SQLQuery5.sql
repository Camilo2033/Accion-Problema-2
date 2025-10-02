SELECT c.Titulo, i.Nombre AS Interprete, co.Nombre AS Compositor
FROM Cancion c
JOIN CancionCompositor cc ON c.Id = cc.IdCancion
JOIN Compositor co ON cc.IdCompositor = co.Id
JOIN Interpretacion it ON c.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
JOIN Ritmo r ON it.IdRitmo = r.Id
WHERE r.Ritmo = 'Balada'
  AND i.Nombre = co.Nombre;