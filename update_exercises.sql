use hippo_jenn;

-- Write SELECT statements to output each of the following with a caption:
    -- All albums in your table
        select * FROM albums;
    -- All albums released before 1980
        select * from albums where release_date < 1980;
    -- All albums by Michael Jackson
        select * from albums where artist = 'Michael Jackson'

-- After each SELECT add an UPDATE statement to:
    -- Make all the albums 10 times more popular (sales * 10)
    UPDATE albums SET sales = sales * 10;
    SELECT * FROM albums;
    SELECT sales FROM albums;
    -- Move all the albums before 1980 back to the 1800s.
    UPDATE albums
    SET release_date = '1800'
    -- SET release_date = release_date - 100
    WHERE release_date < '1980';
    SELECT release_date FROM albums;

-- Change 'Michael Jackson' to 'Peter Jackson'
    UPDATE albums
    SET artist = 'Peter Jackson'
    WHERE artist = 'Michael Jackson';
    SELECT artist FROM albums;

