SELECT name, year_release_albom FROM albom 
WHERE year_release_albom BETWEEN '20180101'	and '20181231'
;

SELECT name, duration_song FROM songs
ORDER BY duration_song DESC 
LIMIT 1
;

SELECT name, duration_song FROM songs
WHERE duration_song >= '00:03:30'
;

SELECT name, year_release_collection FROM collection
WHERE year_release_collection BETWEEN '20180101' AND '20201231'
;

SELECT name FROM singers
WHERE name NOT LIKE '% %'
;

SELECT name FROM songs
WHERE name ILIKE 'my %' 
OR name ILIKE '% my' 
OR name ILIKE '% my %' 
OR name = 'my'
OR name ILIKE 'мой %' 
OR name ILIKE '% мой' 
OR name ILIKE '% мой %' 
OR name = 'мой'
;