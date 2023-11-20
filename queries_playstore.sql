SELECT * FROM analytics;

SELECT * FROM  analytics
    WHERE id = 1880;

SELECT id, app_name FROM analytics 
    WHERE last_updated = '2018-08-01';

SELECT cateorgy, COUNT(*) FROM analytics
    GROUP BY cateorgy;

SELECT * FROM analytics
    ORDER BY reviews DESC
    LIMIT 5;

SELECT cateorgy, AVG(rating) FROM  analytics
    GROUP BY cateorgy
    ORDER BY avg DESC;

SELECT app_name, price , rating FROM analytics
    WHERE rating > 3
    ORDER BY price DESC
    LIMIT 1;

SELECT * FROM analytics
    WHERE min_installs <=50
        AND rating IS NOT NULL
    ORDER BY rating DESC;

SELECT app_name FROM analytics
    WHERE rating < 3 AND reviews >= 10000;

SELECT * FROM analytics
    WHERE price BETWEEN 0.1 AND 1
    ORDER BY reviews DESC
    LIMIT 10;

SELECT * FROM analytics
    ORDER BY last_updated LIMIT 1;

SELECT * FROM analytics
    WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

SELECT * FROM analytics
    WHERE price = (SELECT MAX(price) FROM analytics);

SELECT * FROM analytics
    ORDER BY price DESC LIMIT 1;

SELECT SUM(reviews) AS "All The Reviews" FROM analytics;

SELECT cateorgy FROM analytics
    GROUP BY cateorgy
    HAVING COUNT(*) > 300;

SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion
    FROM analytics
    WHERE min_installs >= 10000
    ORDER BY proportion DESC
    LIMIT 1;