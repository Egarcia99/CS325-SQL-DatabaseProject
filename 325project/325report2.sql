-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- December 7, 2022

spool 325report2-results.txt

--Formatting
ttitle "All Songs and Albums"
set pagesize 60
set feedback off

Col album_id heading "AlbmID" format a6
Col song_id heading "SongId" format a6
Col album_title heading "Album|Title" format a25
Col song_title heading "Song|Title" format a30
Col song_date_out heading "Song|Date" format a9

break on album_title skip 1

select songs_on_album.album_id, song.song_id, album.album_title, song.song_title, song_date_out
from songs_on_album
join song on songs_on_album.song_id = song.song_id
join album on songs_on_album.album_id = album.album_id;


clear breaks
clear columns
ttitle off
set pagesize 14
set feedback on

spool off