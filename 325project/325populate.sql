-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- November 26, 2022

prompt ===== Deleting table contents =====

delete from playlist_download;
delete from artist_albums;
delete from albums_downloaded;
delete from song_in_radio;
delete from account_radio;
delete from songs_downloaded;
delete from songs_on_album;
delete from album_genres;
delete from album;
delete from playlist_songs;
delete from playlist;
delete from artist_followers;
delete from song_artist;
delete from artist;
delete from song;
delete from radio;
delete from account_fav_genre;
delete from account_follows;
delete from account;

prompt ===== Populating Account =====

insert into account
values ('joeburrow@gmail.com', '707-888-4898', 'T');

insert into account
values ('tbrady44@gmail.com', '707-921-9399', 'T');

insert into account
values ('ttampanga@gmail.com', '707-333-1323', 'T');

insert into account
values ('dbsammy@gmail.com', '707-442-1344', 'T');

insert into account
values ('josephhilton@gmail.com', '707-874-9654', 'T');

insert into account
values ('amandacruz@gmail.com', '707-142-4544', 'T');

insert into account
values ('pamporter@gmail.com', '707-877-3466', 'T');

insert into account
values ('sherrysmith@gmail.com', '707-645-6989', 'T');

insert into account
values ('jamecobbler@gmail.com', '707-188-2849', 'T');

insert into account
values ('jessenaga@gmail.com', '707-392-6455', 'T');

prompt ===== Populating account_follows =====

insert into account_follows
values ('joeburrow@gmail.com', 'tbrady44@gmail.com');

insert into account_follows
values ('tbrady44@gmail.com', 'joeburrow@gmail.com');

insert into account_follows
values ('dbsammy@gmail.com', 'pamporter@gmail.com');

insert into account_follows
values ('jessenaga@gmail.com', 'sherrysmith@gmail.com');

insert into account_follows
values ('jamecobbler@gmail.com', 'jessenaga@gmail.com');

insert into account_follows
values ('sherrysmith@gmail.com', 'ttampanga@gmail.com');

insert into account_follows
values ('pamporter@gmail.com', 'dbsammy@gmail.com');

insert into account_follows
values ('amandacruz@gmail.com', 'josephhilton@gmail.com');

insert into account_follows
values ('josephhilton@gmail.com', 'amandacruz@gmail.com');

insert into account_follows
values ('ttampanga@gmail.com', 'jessenaga@gmail.com');

insert into account_follows
values ('jamecobbler@gmail.com', 'amandacruz@gmail.com');

insert into account_follows
values ('pamporter@gmail.com', 'amandacruz@gmail.com');

insert into account_follows
values ('pamporter@gmail.com', 'joeburrow@gmail.com');

prompt ===== Populating account_fav_genre =====

insert into account_fav_genre
values ('Rap', 'joeburrow@gmail.com');

insert into account_fav_genre
values ('Rock-and-Roll', 'josephhilton@gmail.com');

insert into account_fav_genre
values ('EDM', 'amandacruz@gmail.com');

insert into account_fav_genre
values ('Classical', 'jessenaga@gmail.com');

insert into account_fav_genre
values ('Metal', 'sherrysmith@gmail.com');

insert into account_fav_genre
values ('Gospel', 'jamecobbler@gmail.com');

insert into account_fav_genre
values ('Classic Jazz', 'ttampanga@gmail.com');

insert into account_fav_genre
values ('Blue Grass', 'ttampanga@gmail.com');

insert into account_fav_genre
values ('Hip-hop', 'tbrady44@gmail.com');

insert into account_fav_genre
values ('Blues', 'pamporter@gmail.com');

prompt ===== Populating radio =====

insert into radio
values ('111111', 'Classic Rock Radio', '1hr');

insert into radio
values ('222222', 'Blue Grass Radio', '2.5hr');

insert into radio
values ('333333', 'Christmas Classics Radio', '3hr');

insert into radio
values ('444444', 'Nonstop Dance Radio', '2hr');

insert into radio
values ('555555', 'Karaoke Night Radio', '3hr');

insert into radio
values ('666666', 'Stoner Rock Radio', '1.5hr');

insert into radio
values ('777777', 'Halloween Radio', '2hr');

insert into radio
values ('888888', 'Classical Piano Radio', '4hr');

insert into radio
values ('999999', 'Hip-hop Radio', '2hr');

insert into radio
values ('955213', 'Blues Radio', '2hr');

prompt ===== Populating Song =====

insert into song
values ('100000', '4:10', 'Rhiannon',  '13-APR-1987');

insert into song
values ('200000', '4:00', 'Im N Luv (Wit a Stripper)', '06-DEC-2005');

insert into song
values ('300000', '7:36', 'Kaleidoscope', '06-OCT-2009');

insert into song
values ('400000', '4:23', 'Red Lights', '13-JUN-2014');

insert into song
values ('500000', '4:59', 'I Wanna Dance With Somebody', '02-MAY-1987');

insert into song
values ('600000', '5:25', 'Sad but True', '12-AUG-1991');

insert into song
values ('700000', '3:39', 'Come as You Are', '24-SEP-1991');

insert into song
values ('800000', '5:23', 'Funky Monks', '24-SEP-1991');

insert into song
values ('900000', '2:30', 'Them Bones', '29-SEP-1992');

insert into song
values ('999999', '5:30', 'The Thrill Is Gone', '10-OCT-1992');

prompt ===== Populating Artist =====

insert into artist
values ('110011', 'Tiesto', 250000);

insert into artist (artist_id, artist_name, artist_followers)
values ('220022', 'Metallica', 1000000);

insert into artist (artist_id, artist_name, artist_followers)
values ('330033', 'Fleetwood Mac', 2000000);

insert into artist (artist_id, artist_name, artist_followers)
values ('440044', 'T-Pain', 2500000);

insert into artist (artist_id, artist_name, artist_followers)
values ('550055', 'Nirvana', 3000000);

insert into artist (artist_id, artist_name, artist_followers)
values ('660066', 'Alice in Chains', 750000);

insert into artist (artist_id, artist_name, artist_followers)
values ('770077', 'Whitney Houston', 4000000);

insert into artist (artist_id, artist_name, artist_followers)
values ('880088', 'Red Hot Chili Peppers', 3500000);

insert into artist (artist_id, artist_name, artist_followers)
values ('990099', 'B.B. King', 4000000);

insert into artist (artist_id, artist_name, artist_followers)
values ('924226', 'Allman Brothers Band', 753000);

prompt ===== Populating song_artist =====

insert into song_artist
values ('100000', '330033');

insert into song_artist
values ('200000', '440044');

insert into song_artist
values ('300000', '110011');

insert into song_artist
values ('400000', '110011');

insert into song_artist
values ('500000', '770077');

insert into song_artist
values ('600000', '220022');

insert into song_artist
values ('700000', '550055');

insert into song_artist
values ('800000', '880088');

insert into song_artist
values ('900000', '660066');

insert into song_artist
values ('999999', '990099');

prompt ===== Populating Artist_followers =====

insert into artist_followers
values ('pamporter@gmail.com' ,'990099');

insert into artist_followers
values ('tbrady44@gmail.com', '440044');

insert into artist_followers
values ('amandacruz@gmail.com', '660066');

insert into artist_followers
values ('dbsammy@gmail.com', '924226');

insert into artist_followers
values ('josephhilton@gmail.com', '880088');

insert into artist_followers
values ('josephhilton@gmail.com', '990099');

insert into artist_followers
values ('joeburrow@gmail.com', '990099');

insert into artist_followers
values ('jessenaga@gmail.com', '330033');

insert into artist_followers
values ('jamecobbler@gmail.com', '550055');

insert into artist_followers
values ('ttampanga@gmail.com', '770077');

prompt ===== Populating Playlist =====

insert into playlist
values ('145122', 'Old School Rap', 13, '1hr', 'joeburrow@gmail.com');

insert into playlist
values ('212892', 'Christmas Carols', 22, '1.5hr', 'pamporter@gmail.com');

insert into playlist
values ('312956', 'Tiesto Club Hits', 33, '2hr', 'amandacruz@gmail.com');

insert into playlist
values ('489123', 'Metal', 22, '1hr', 'sherrysmith@gmail.com');

insert into playlist
values ('534722', 'City Blues', 46, '3hr', 'pamporter@gmail.com');

insert into playlist
values ('628199', 'My Favorite Rock', 32, '2hr', 'josephhilton@gmail.com');

insert into playlist
values ('782922', 'Saxy Jazz', 23, '1.5hr', 'ttampanga@gmail.com');

insert into playlist
values ('812122', 'Church Playlist', 15, '1hr', 'jamecobbler@gmail.com');

insert into playlist
values ('953333', '00s Hip-hop', 67, '4hr', 'tbrady44@gmail.com');

insert into playlist
values ('988421', 'Practice Squad Mix', 98, '5hr', 'tbrady44@gmail.com');

insert into playlist
values ('602875', 'Lofi Hip Hop Beats', 230, '7hr', 'amandacruz@gmail.com');

prompt ===== Populating playlist_songs =====
insert into playlist_songs
values ('628199', '100000');

insert into playlist_songs
values ('628199', '900000');

insert into playlist_songs
values ('628199', '700000');

insert into playlist_songs
values ('312956', '300000');

insert into playlist_songs
values ('312956', '400000');

insert into playlist_songs
values ('953333', '200000');

insert into playlist_songs
values ('534722', '999999');

insert into playlist_songs
values ('489123', '900000');

insert into playlist_songs
values ('489123', '600000');

insert into playlist_songs
values ('988421', '500000');

prompt ===== Populating album =====

insert into album
values ('123456', 'Rappa Ternt Sanga', '06-DEC-2005', 18, '1hr', '440044');

insert into album
values ('234567', 'Fleetwood Mac', '11-JUL-1975', 22, '2hr', '330033');

insert into album
values ('345678', 'Kaleidoscope', '06-OCT-2009', 17, '1hr', '110011');

insert into album
values ('456789', 'Whitney', '02-MAY-1987', 11, '1hr', '770077');

insert into album
values ('567890', 'Blood Sugar Sex Magik','24-SEP-1991', 17, '1hr', '880088');

insert into album
values ('678901', 'Metallica', '12-AUG-1991', 12, '1hr', '220022');

insert into album
values ('789012', 'Nevermind', '24-SEP-1991', 12, '1hr', '550055');

insert into album
values ('890123', 'Dirt', '29-SEP-1992', 13, '1hr', '660066');

insert into album
values ('012345', 'King of the Blues', '10-OCT-1992', 32, '3hr', '990099');

insert into album
values ('572540', 'Mothers Milk', '16-AUG-1989', 13, '1hr', '880088');

prompt ===== Populating album_genres =====

insert into album_genres
values ('Hip-hop', '123456');

insert into album_genres
values ('Classic Rock', '234567');

insert into album_genres
values ('EDM', '345678');

insert into album_genres
values ('Rock and Roll', '567890');

insert into album_genres
values ('Alternative', '567890');

insert into album_genres
values ('Pop', '456789');

insert into album_genres
values ('Metal', '678901');

insert into album_genres
values ('Grunge', '789012');

insert into album_genres
values ('Grunge', '890123');

insert into album_genres
values ('Blues', '012345');

prompt ===== Populating Songs_on_album =====

insert into Songs_on_album
values ('123456', '200000');

insert into Songs_on_album
values ('234567', '100000');

insert into Songs_on_album
values ('345678', '300000');

insert into Songs_on_album
values ('345678', '400000');

insert into Songs_on_album
values ('456789', '500000');

insert into Songs_on_album
values ('678901', '600000');

insert into Songs_on_album
values ('789012', '700000');

insert into Songs_on_album
values ('890123', '900000');

insert into Songs_on_album
values ('567890', '800000');

insert into Songs_on_album
values ('012345', '999999');

prompt ===== Populating Songs_downloaded =====

insert into songs_downloaded
values ('100000', 'tbrady44@gmail.com');

insert into songs_downloaded
values ('200000', 'tbrady44@gmail.com');

insert into songs_downloaded
values ('400000', 'amandacruz@gmail.com');

insert into songs_downloaded
values ('300000', 'amandacruz@gmail.com');

insert into songs_downloaded
values ('600000', 'sherrysmith@gmail.com');

insert into songs_downloaded
values ('900000', 'sherrysmith@gmail.com');

insert into songs_downloaded
values ('700000', 'josephhilton@gmail.com');

insert into songs_downloaded
values ('800000', 'josephhilton@gmail.com');

insert into songs_downloaded
values ('900000', 'josephhilton@gmail.com');

insert into songs_downloaded
values ('999999', 'josephhilton@gmail.com');

prompt ===== Populating Account_radio =====

insert into account_radio
values ('111111', 'josephhilton@gmail.com');

insert into account_radio
values ('222222', 'josephhilton@gmail.com');

insert into account_radio
values ('666666', 'josephhilton@gmail.com');

insert into account_radio
values ('444444', 'amandacruz@gmail.com');

insert into account_radio
values ('888888', 'jessenaga@gmail.com');

insert into account_radio
values ('777777', 'jessenaga@gmail.com');

insert into account_radio
values ('999999', 'tbrady44@gmail.com');

insert into account_radio
values ('955213', 'pamporter@gmail.com');

insert into account_radio
values ('222222', 'pamporter@gmail.com');

insert into account_radio
values ('333333', 'ttampanga@gmail.com');

prompt ===== Populating song_in_radio =====

insert into song_in_radio
values ('100000', '111111');

insert into song_in_radio
values ('300000', '444444');

insert into song_in_radio
values ('200000', '555555');

insert into song_in_radio
values ('200000', '999999');

insert into song_in_radio
values ('999999', '955213');

insert into song_in_radio
values ('900000', '666666');

insert into song_in_radio
values ('800000', '666666');

insert into song_in_radio
values ('500000', '555555');

insert into song_in_radio
values ('400000', '444444');

insert into song_in_radio
values ('800000', '111111');

prompt ===== Populating albums_downloaded =====

insert into albums_downloaded
values ('123456', 'tbrady44@gmail.com');

insert into albums_downloaded
values ('234567', 'josephhilton@gmail.com');

insert into albums_downloaded
values ('345678', 'amandacruz@gmail.com');

insert into albums_downloaded
values ('456789', 'tbrady44@gmail.com');

insert into albums_downloaded
values ('567890', 'joeburrow@gmail.com');

insert into albums_downloaded
values ('678901', 'jamecobbler@gmail.com');

insert into albums_downloaded
values ('789012', 'pamporter@gmail.com');

insert into albums_downloaded
values ('890123', 'sherrysmith@gmail.com');

insert into albums_downloaded
values ('012345', 'pamporter@gmail.com');

insert into albums_downloaded
values ('012345', 'jamecobbler@gmail.com');

prompt ===== artist_albums =====

insert into artist_albums
values ('123456', '440044');

insert into artist_albums
values ('234567', '330033');

insert into artist_albums
values ('345678', '110011');

insert into artist_albums
values ('456789', '770077');

insert into artist_albums
values ('567890', '880088');

insert into artist_albums
values ('678901', '220022');

insert into artist_albums
values ('789012', '550055');

insert into artist_albums
values ('890123', '660066');

insert into artist_albums
values ('012345', '990099');

insert into artist_albums
values ('572540', '880088');

prompt ===== playlist_download =====

insert into playlist_download
values ('145122', 'amandacruz@gmail.com');

insert into playlist_download
values ('312956', 'joeburrow@gmail.com');

insert into playlist_download
values ('312956', 'amandacruz@gmail.com');

insert into playlist_download
values ('212892', 'tbrady44@gmail.com');

insert into playlist_download
values ('602875', 'tbrady44@gmail.com');

insert into playlist_download
values ('602875', 'sherrysmith@gmail.com');

insert into playlist_download
values ('602875', 'josephhilton@gmail.com');

insert into playlist_download
values ('953333', 'jamecobbler@gmail.com');

insert into playlist_download
values ('212892', 'jamecobbler@gmail.com');

insert into playlist_download
values ('988421', 'tbrady44@gmail.com');
