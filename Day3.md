# Day 3

# AWS


## vertical
    Increasing the max capacity
## horizontal
    Adding more number of pc

>Database

![db](Screenshot%202024-04-24%20121231.png)


## sql practice
>Excerise 1
1. Find the title of each film
     `Select Title from movie`
2. Find the director of each film
     `SELECT director FROM movies;`
3. Find the title and director of each film
     `SELECT title,director FROM movies;`
4. Find the title and year of each film 
     `Find the title and year of each film `
5. Find all the information about each film ✓
     `SELECT * FROM movies;`

>Excerise 2

1. Find the movie with a row id of 6
    `Select Title from Movies where ID=6`
2. Find the movies released in the years between 2000 and 2010
   `Select Title from Movies where Year BETWEEN 2000 AND 2010`
3. Find the movies not released in the years between 2000 and 2010
   `SELECT Title FROM movies where year NOT BETWEEN 2000 AND 2010;`
4.  Find the first 5 Pixar movies and their release year
    `SELECT * FROM movies Where year LIMIT 5 ;`

>Excerise 3

1. Find all the Toy Story movies
    ` SELECT * FROM movies where Title Like 'Toy Story%';`
2. Find all the movies directed by John Lasseter
    ` SELECT * FROM movies Where Director='John Lasseter';`
3. Find all the movies (and director) not directed by John Lasseter
    `SELECT title,director  FROM movies Where Director !='John Lasseter';`
4. Find all the WALL-* movies
    `Select * from Movies where title like 'WALL-_'`

>Excerise 4

1. List all directors of Pixar movies (alphabetically), without duplicates
   - `SELECT DISTINCT director FROM movies order by Director;`
2. List the last four Pixar movies released (ordered from most recent to least)
   - `SELECT * FROM movies order by year desc limit 4; `
3. List the first five Pixar movies sorted alphabetically
   - `SELECT * FROM movies order by title limit 5;`
4. List the next five Pixar movies sorted alphabetically
     ```

     SELECT * FROM movies order by title  limit 5 offset 5; 
     ```

>Excerise 5

1. List all the Canadian cities and their populations
   - `SELECT * FROM north_american_cities where Country='Canada' `
2. Order all the cities in the United States by their latitude from north to south
   - `SELECT * FROM north_american_cities where Country Like 'United%'order by Latitude desc; `
3. List all the cities west of Chicago, ordered from west to east
   - ` SELECT city FROM north_american_cities where Longitude<-87.629798 order by longitude asc;`
4. List the two largest cities in Mexico (by population)
   - `SELECT * FROM north_american_cities where country='Mexico' order by Population desc limit 2; `
5. List the third and fourth largest cities (by population) in the United States and their population
   - `Select * from North_american_cities where country Like 'United%'order by population desc  limit 2 offset 2 `