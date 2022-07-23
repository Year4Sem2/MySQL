# Write your MySQL query statement below
-- select s1.score, (select count(distinct score) from Scores s2 where s2.score >= s1.score) AS "Rank"
-- select s1.score, (select count(distinct score) from Scores s2 where s2.score >= s1.score) AS "Rank"
select score, DENSE_RANK() OVER (order by score desc) AS "Rank" from Scores;