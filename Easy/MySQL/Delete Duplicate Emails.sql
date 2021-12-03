/*
196. Delete Duplicate Emails

    Table: Person

    +-------------+---------+
    | Column Name | Type    |
    +-------------+---------+
    | id          | int     |
    | email       | varchar |
    +-------------+---------+
    id is the primary key column for this table.
    Each row of this table contains an email. The emails will not contain
    uppercase letters.

    ---

    Write an SQL query to delete all the duplicate emails, keeping only one
    unique emails with the smallest id.
    Return the result table in any order.
    The query result format is in the following example.
    
    ---

    Example 1:

    Input: 
    Person table:
    +----+------------------+
    | id | email            |
    +----+------------------+
    | 1  | john@example.com |
    | 2  | bob@example.com  |
    | 3  | john@example.com |
    +----+------------------+
    Output: 
    +----+------------------+
    | id | email            |
    +----+------------------+
    | 1  | john@example.com |
    | 2  | bob@example.com  |
    +----+------------------+
    Explanation: john@example.com is repeated two times. We keep the row with
    the smallest Id = 1.
*/

-- SQL Schema
Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'john@example.com')
insert into Person (id, email) values ('2', 'bob@example.com')
insert into Person (id, email) values ('3', 'john@example.com')

DELETE
    P1
FROM
    Person
AS
    P1
INNER JOIN
    Person
AS
    P2
WHERE
    P1.id > P2.id
AND
    P1.email = P2.email;