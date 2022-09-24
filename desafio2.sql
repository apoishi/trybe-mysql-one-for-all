
SELECT
  COUNT(DISTINCT s.song_id) AS cancoes,
  COUNT(DISTINCT ar.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM
  SpotifyClone.songs AS s,
  SpotifyClone.artists AS ar,
  SpotifyClone.albums AS al;