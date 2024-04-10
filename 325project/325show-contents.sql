-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- November 27, 2022

spool 325result-contents.txt

set pagesize 100
set feedback off
break on row skip 1
-- Account formatting
Col account_email heading Account|Email format a25
Col account_phone heading Phone|Number format a12
Col account_premium heading Premium|Status format a7
Col account_following heading Account|Following format a25
Col account_favorite_genres heading Favorite|Genre format a15
-- Radio formatting
Col radio_id heading Radio|ID format a6
Col radio_title heading Radio|Title format a35
Col radio_length heading Radio|Length format a6
-- Song formatting
Col song_id heading Song|ID format a6
Col song_length heading Song|Length format a7
Col song_title heading Song|Title format a35
Col song_date_out heading Release|Date format a12
-- Artist formatting
Col artist_id heading Artist|ID format a6
Col artist_name heading Artist|Name format a30
Col artist_followers heading Followers format 999999999999
-- Playlist formatting
Col playlist_id heading Playlist|ID format a6
Col playlist_title heading Playlist|Title format a35
Col playlist_count heading Song|Count format 999
Col playlist_length heading Playlist|Length format a6
-- Album formatting
Col album_id heading Album|ID format a6
Col album_title heading Album|Title format a30
Col album_date_out heading Release|date format a12
Col album_song_count heading Song|Count format 999
Col album_length heading Album|Length format a6
Col album_genre heading Album|Genre format a15

prompt ===================================
prompt ===== Account Contents =====
prompt ===================================

select *
from account;

prompt ===================================
prompt ===== Account_follows Contents =====
prompt ===================================

select *
from account_follows;

prompt ===================================
prompt ===== Account_fav_genre Contents =====
prompt ===================================

select *
from account_fav_genre;

prompt ===================================
prompt ===== Radio Contents =====
prompt ===================================

select *
from radio;

prompt ===================================
prompt ===== Song Contents =====
prompt ===================================

select *
from song;

prompt ===================================
prompt ===== Artist Contents =====
prompt ===================================

select artist_id, artist_name, artist_followers
from artist;

prompt ===================================
prompt ===== Song_artist Contents =====
prompt ===================================

select *
from song_artist;

prompt ===================================
prompt ===== Artist_followers Contents =====
prompt ===================================

select *
from artist_followers;

prompt ===================================
prompt ===== Playlist Contents =====
prompt ===================================

select playlist_id, playlist_title, playlist_count
from playlist;
select playlist_id, playlist_length, account_email
from playlist;

prompt ===================================
prompt ===== Playlist_songs Contents =====
prompt ===================================

select *
from playlist_songs;

prompt ===================================
prompt ===== Album Contents =====
prompt ===================================

select *
from album;

prompt ===================================
prompt ===== Album_genre Contents =====
prompt ===================================

select *
from album_genre;

prompt ===================================
prompt ===== Songs_on_album Contents =====
prompt ===================================

select *
from songs_on_album;

prompt ===================================
prompt ===== Songs_downloaded Contents =====
prompt ===================================

select *
from songs_downloaded;

prompt ===================================
prompt ===== Account_radio Contents =====
prompt ===================================

select *
from account_radio;

prompt ===================================
prompt ===== Song_in_radio Contents =====
prompt ===================================

select *
from song_in_radio;

prompt ===================================
prompt ===== Albums_downloaded Contents =====
prompt ===================================

select *
from albums_downloaded;

prompt ===================================
prompt ===== Artist_albums Contents =====
prompt ===================================

select *
from artist_albums;

prompt ===================================
prompt ===== playlist_download Contents =====
prompt ===================================

select *
from playlist_download;

-- Reset formatting
set pagesize 14
set feedback 6
clear columns
clear breaks
spool off