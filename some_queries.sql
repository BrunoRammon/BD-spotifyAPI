drop table track;
drop table album;
drop table artist;

-- Modelagem de dados
---- MER (https://excalidraw.com/)
---- DER (https://excalidraw.com/)
---- Modelo lógico (Power architect)
---- Criação de esquema (função new_create_table no módulo save_content_postgresql.py)

-- Bibliotecas utilizadas
--- requests para realização de requisições
--- psycopg2 para conexão e operações no banco de dados
--- pandas para salvar dados em memória antes de enviar para banco de dados
--- tabulate para imprimir dataframes no console

-- Consumo da api (https://developer.spotify.com/documentation/web-api/reference/#/)
---- 1) músicas de artistas por albuns (run: python3 new_tracks_artist_by_albums.py)
---- 2) n músicas mais populares em dado ano (run: python3 new_most_popular_tracks_by_year.py) 



select * from artist;
select * from album;
select * from track;


select name_track,name_album,name_artist,duration_ms
from track as t
left join album as a on a.id = t.id_album
left join artist as ar on ar.id = a.id_artist;


delete from track where name_track = 'Continuar';

select name_track from track where name_track = 'Continuar';

select name_album from album where name_album = 'Histórias e Bicicletas';

delete from album where name_album = 'Histórias e Bicicletas';

select name_album from album where name_album = 'Histórias e Bicicletas';

select name_track from track;

select name_artist from artist where name_artist = 'Oficina G3';

delete from artist where name_artist = 'Oficina G3';

select name_artist from artist where name_artist = 'Oficina G3';

select name_album from album;

select name_track from track;










