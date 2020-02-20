USE codeup_test_db;

# All albums in your table.
select *
from albums;

# All albums released before 1980
select *
from albums
where release_date < 1980;

# All albums by Michael Jackson
select *
from albums
where artist = 'Michael Jackson';

# After each SELECT add an UPDATE statement to:

# Make all the albums 10 times more popular (sales * 10)
update albums
set sales = sales * 10;

select *
from albums;

# Move all the albums before 1980 back to the 1800s.
update albums
set release_date = release_date - 100
where release_date < 1980;

select *
from albums
where release_date < 1880;

# Change 'Michael Jackson' to 'Peter Jackson'
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select *
from albums
where artist = 'Peter Jackson';