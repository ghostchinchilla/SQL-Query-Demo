SELECT app_name, rating, cateorgy FROM analytics
    WHERE (rating, cateorgy) in (
        SELECT MAX (rating), cateorgy FROM analytics
        WHERE min_installs >= 50000
        GROUP BY cateorgy
    )
    ORDER BY cateorgy;

SELECT * FROM analytics 
    WHERE app_name ILIKE '%facebook%';

SELECT * FROM analytics 
  WHERE  array_length(genres, 1) = 2;

SELECT * FROM analytics 
  WHERE genres @> '{"Education"}';
