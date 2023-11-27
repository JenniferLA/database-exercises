use hippo_jenn;

-- The name of all albums by Pink Floyd:
    select * from albums where artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released:
    select release_date from albums where name = 'Sgt. Pepper'/s' Lonely Hearts Club';
-- The genre for Nevermind:
    select genre from albums where name = 'Nevermind';
-- Which albums were released in the 1990s:
    select * from albums where release_date = 1990;
-- Which albums had less than 20 million certified sales:
    SELECT * FROM albums WHERE sales > 20;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
    SELECT * FROM albums WHERE genre = 'rock';