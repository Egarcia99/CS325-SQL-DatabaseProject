-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- 6 December, 2022

spool 325query-results.txt

prompt ===== 1. Songs on each album =====

select album_song_count as track_count, album_title
from album
order by album_song_count desc;

prompt ===== 2. Grunge albums =====

select album_id, album_title
from album
where album_id in (select album_id
from album_genres
where album_genre = 'Grunge');

prompt ===== 3. Average followers of all artists =====

select avg(artist_followers)
from artist;

prompt ===== 4. Users with >1 followers =====

select count(account_following) as followers, account_email
from account_follows
group by account_email
having count(account_following) > 1
order by count(account_following) desc;

prompt ===== 5. Song titles matched with albums =====

Col album_title heading "Album|Title" format a25
Col song_title heading Song|Title format a30

select album.album_title, song.song_title, song_date_out
from songs_on_album
join song on songs_on_album.song_id = song.song_id
join album on songs_on_album.album_id = album.album_id;

clear columns

prompt ===== 6. Albums released after 2000 with more than 10 songs =====

select album_date_out, album_song_count as track_count, album_title
from album
where album_date_out > '01-JAN-2000'
and album_song_count > 10;

prompt ===== 7. Artists with more than 1 million followers =====

select *
from artist
where artist_followers > 1000000;

prompt ===== 8. All playlists and their songs =====

set pagesize 60
set feedback off
break on playlist_title skip 1

select playlist.playlist_title, song.song_title
from playlist_songs
join playlist on playlist_songs.playlist_id = playlist.playlist_id
join song on playlist_songs.song_id = song.song_id;

set pagesize 14
set feedback on
clear breaks
spool off