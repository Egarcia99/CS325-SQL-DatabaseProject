-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- December 7, 2022

spool 325report3-results.txt

--Formatting
ttitle "All Playlists Containing Songs"
set pagesize 60
set feedback off

Col playlist_title heading "Playlist|Title" format a25
Col song_title heading "Song|Title" format a27
Col account_email heading "Playlist|Creator" format a22
break on account_email skip 1

select playlist.account_email, playlist.playlist_title, song.song_title
from playlist_songs
join playlist on playlist_songs.playlist_id = playlist.playlist_id
join song on playlist_songs.song_id = song.song_id;

clear breaks
clear columns
ttitle off
set pagesize 14
set feedback on

spool off