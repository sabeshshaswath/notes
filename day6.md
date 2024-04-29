
## rename dp
> Exec sp_renamedp

## assignment

>declare @name type=value[text]

```sql

declare @fftech int=2;

select student_id,student_name from Student  order by student_id offset 0 rows fetch next @fftech rows only;
```

## limit and top in mssql


```sql

    select student_id,student_name from Student  order by student_id offset 0 rows fetch next 2 rows only;
```
## operations

They all will be selecting only distinc values 
- Intersect
- union
- except(order matters)

## keys

### candidate keys
- unique
- Not null
- includes primary key
### alternate key
  - unique
- Not null
### super key
- combination of unique key
### composite key
- when there is no primary
- combination of two non unique attributes

![asa](https://github.com/sabeshshaswath/notes/blob/april_29/Screenshot%202024-04-29%20142733.png)

# kinda loops

![asa](https://github.com/sabeshshaswath/notes/blob/april_29/imagesaa.png)

![sasa](https://github.com/sabeshshaswath/notes/blob/april_29/image.png)
