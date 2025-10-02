USE Discografia;   
GO
SELECT COUNT(*) AS Total_Canciones
FROM Cancion c
JOIN CancionCompositor cc ON c.Id = cc.IdCancion
JOIN Compositor co ON co.Id = cc.IdCompositor
WHERE CHARINDEX('JUANES', co.Nombre) > 0;