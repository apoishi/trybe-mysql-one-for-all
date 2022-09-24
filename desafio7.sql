SELECT 
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(fa.user_id) AS seguidores
FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al 
  ON ar.artist_id = al.artist_id
	INNER JOIN SpotifyClone.following_artists AS fa
  ON ar.artist_id = fa.artist_id
GROUP BY
	artista,
	album
ORDER BY 
	seguidores DESC, artista, album;