SELECT *
FROM game_sales_data;

--Task 1: Top 10 Best Selling Video Games
SELECT game, games_sold
FROM game_sales_data
ORDER BY games_sold DESC
LIMIT 10;

--Task 2: Top Critic Rated Games
SELECT game, AVG(critic_score)
FROM game_sales_data
WHERE critic_score IS NOT NULL
GROUP BY game
ORDER BY AVG(critic_score) DESC;

--Task 3: Top User Rated Games
SELECT game, AVG(user_score)
FROM game_sales_data
WHERE user_score IS NOT NULL
GROUP BY game
ORDER BY user_score DESC;

--Task 4: Highest Avg. Rated Games
SELECT *,
       (SELECT AVG(comb)
        FROM   (VALUES(critic_score),
                      (user_score)
                      ) T (comb)) AS average_score
FROM   game_sales_data
WHERE critic_score IS NOT NULL AND user_score IS NOT NULL
ORDER BY average_score DESC
LIMIT 11;

--Task 5: Top 10 Consoles by Game Sales
SELECT console, SUM(games_sold) AS total_sold
FROM game_sales_data
GROUP BY console
ORDER BY total_sold DESC
LIMIT 10;

--Task 6: Top 10 Consoles by Avg. Rated Games
SELECT console, AVG(average_score) AS console_avg
FROM game_sales_data
GROUP BY console
ORDER BY console_avg DESC
LIMIT 10;

