-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- December 6, 2022

prompt ===== Account Table Creation =====

drop table account cascade constraints;

create table account
(
    account_email	varchar2(50),
    account_phone      char(12),
    account_premium varchar2(1),
    check (account_premium = 'T' or account_premium = 'F'),
    primary key (account_email)
);

prompt ===== Account_follows Table Creation =====

drop table account_follows cascade constraints;

create table account_follows
(
    account_following   varchar2(50),
    account_email	  varchar2(50),
    primary key (account_following, account_email),
    foreign key (account_following) references account(account_email),
    foreign key (account_email) references account
);

prompt ===== Account_fav_genre Table Creation =====

drop table account_fav_genre cascade constraints;

create table account_fav_genre
(
    account_favorite_genres	varchar2(35),
    account_email 	        	varchar2(50),
    primary key (account_favorite_genres, account_email),
    foreign key (account_email) references account
);

prompt ===== Radio Table Creation =====

drop table radio cascade constraints;

create table radio
(
    radio_id         char(6),
    radio_title	  varchar2(35),
    radio_length	  varchar2(25),
    primary key (radio_id)
);

prompt ===== Song Table Creation =====

drop table song cascade constraints;

create table song
(   
    song_id	 char(6),
    song_length      varchar2(7),
    song_title	 varchar2(35),
    song_date_out	 date,
    primary key (song_id)
);

prompt ===== Artist Table Creation =====

drop table artist cascade constraints;

create table artist
(   
    artist_id	  char(6),
    artist_name	  varchar2(50),
    artist_followers  integer,
    primary key (artist_id)
);

prompt ===== Artist_followers Table Creation =====

drop table artist_followers cascade constraints;

create table artist_followers
(
    account_email	  varchar2(50),
    artist_id	        char(6),
    primary key (account_email, artist_id),
    foreign key (artist_id) references artist,
    foreign key (account_email) references account
);

prompt ===== Song_artist Table Creation =====

drop table song_artist cascade constraints;

create table song_artist
(   
    song_id	char(6),
    artist_id	char(6),
    primary key (song_id, artist_id),
    foreign key (song_id) references song,
    foreign key (artist_id) references artist	 
);

prompt ===== Playlist Table Creation =====

drop table playlist cascade constraints;

create table playlist
(   
    playlist_id		char(6),
    playlist_title	        varchar2(35),
    playlist_count	  	integer,
    playlist_length		varchar2(25),
    account_email		varchar2(50),
    primary key (playlist_id),
    foreign key (account_email) references account
);

prompt ===== Playlist_songs Table Creation =====

drop table playlist_songs cascade constraints;

create table playlist_songs
(   
    playlist_id		char(6),
    song_id			char(6),
    primary key (playlist_id, song_id),
    foreign key (playlist_id) references playlist,
    foreign key (song_id) references song
);

prompt ===== Album Table Creation ======

drop table album cascade constraints;

create table album
(   
    album_id	  char(6),
    album_title	  varchar2(50),
    album_date_out    date,
    album_song_count  integer default 1 not null,
    album_length      varchar2(25),
    artist_id	  char(6),
    primary key (album_id),
    foreign key (artist_id) references artist
);

prompt ===== Album_genres Table Creation =====

drop table album_genres cascade constraints;

create table album_genres
(  
    album_genre	  varchar2(35),
    album_id    	  char(6),
    primary key       (album_genre, album_id),
    foreign key	  (album_id) references album
);

prompt ===== Songs_on_album Table Creation =====

drop table songs_on_album cascade constraints;

create table songs_on_album
(
    album_id	char(6),
    song_id		char(6),
    primary key (album_id, song_id),
    foreign key (album_id) references album,
    foreign key (song_id) references song
);

prompt ===== Songs_downloaded Table Creation =====

drop table songs_downloaded cascade constraints;

create table songs_downloaded
(
    song_id    char(6),
    account_email   varchar2(50),
    primary key (song_id, account_email),
    foreign key (song_id) references song,
    foreign key (account_email) references account
);

prompt ===== Account_radio Table Creation =====

drop table account_radio cascade constraints;

create table account_radio
(
    radio_id   char(6),
    account_email   varchar2(50),
    primary key(radio_id, account_email),
    foreign key (radio_id) references radio,
    foreign key (account_email) references account
);

prompt ===== song_in_radio Table Creation =====

drop table song_in_radio cascade constraints;

create table song_in_radio
(
    song_id    char(6),
    radio_id    char(6),
    primary key (song_id, radio_id),
    foreign key (song_id) references song,
    foreign key (radio_id) references radio
);

prompt ===== albums_downloaded =====

drop table albums_downloaded cascade constraints;

create table albums_downloaded
(
    album_id   char(6),
    account_email   varchar2(50),
    primary key (album_id, account_email),
    foreign key (album_id) references album,
    foreign key (account_email) references account
);

prompt ===== artist_albums =====

drop table artist_albums cascade constraints;

create table artist_albums
(
    album_id    char(6),
    artist_id   char(6),
    primary key (album_id, artist_id),
    foreign key (album_id) references album,
    foreign key (artist_id) references artist
);

prompt ===== playlist_download =====

drop table playlist_download cascade constraints;

create table playlist_download
(
    playlist_id char(6),
    account_email   varchar2(50),
    primary key (playlist_id, account_email),
    foreign key (playlist_id) references playlist,
    foreign key (account_email) references account
);