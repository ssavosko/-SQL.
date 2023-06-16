SELECT name, year_release_albom FROM albom 
WHERE year_release_albom = '20180101'	
;

SELECT name, duration_song FROM songs
ORDER BY duration_song DESC 
LIMIT 1
;

SELECT name, duration_song FROM songs
WHERE duration_song >= '00:03:50'
;

SELECT name, year_release_collection FROM collection
WHERE year_release_collection BETWEEN '20180101' AND '20200101'
;

SELECT name FROM singers
WHERE name NOT LIKE '% %'
;

SELECT name FROM songs
WHERE name LIKE '%my%'
OR name LIKE '%мой%'
;
