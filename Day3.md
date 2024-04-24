# Day 3

# AWS


## vertical
    Increasing the max capacity
## horizontal
    Adding more number of pc

>Database

![db](Screenshot%202024-04-24%20121231.png)


## sql practice

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