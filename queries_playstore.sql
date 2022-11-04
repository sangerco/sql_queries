-- Comments in SQL Start with dash-dash --

SELECT * FROM analytics WHERE id = 1880;

-- read info from analytics about app with id of 1880 --

\d analytics

-- find name of last updated column --

SELECT id, app_name FROM analytics WHERE last_updated >= '2018-08-01';

-- find id and name of apps last updated after 8/1/2018 --

SELECT COUNT(*) FROM analytics GROUP BY category;

-- find number of apps in each category --

SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

-- find info from top reviewed apps ordered by number of reviews (don't use count(*)!) --

SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- find app with most reviews where rating is greater than or equal to 4.8 --

SELECT category, AVG(rating) AS average FROM analytics GROUP BY category ORDER BY average DESC;

-- find average ratings for categories, order by average from highest to lowest --

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- find name, price, and rating from most expensive app with a rating of less than 3 --

SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- find apps where min installs are no more than 50, with a rating, ordered by rating from highest to lowest --

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000; 

-- find name of apps with ratings of less than 3 with more than 10,000 reviews --

SELECT * FROM analytics WHERE price >= 0.10 AND price <= 1.00 ORDER BY reviews DESC LIMIT 10;

-- find top ten most reviewed apps priced between $0.10 and $1.00 --

SELECT * FROM analytics ORDER BY last_updated LIMIT 1;
-- or --
SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics) ORDER BY last_updated DESC LIMIT 1;

-- find most out of date app --

SELECT * FROM analytics ORDER BY price DESC LIMIT 1;
-- or --
SELECT * FROM analytics 
    WHERE price = (SELECT MAX(price) FROM analytics) 
    ORDER BY price DESC 
    LIMIT 1;

-- find most expensive app ---

SELECT SUM(reviews) FROM analytics;

-- count all reviews in analytics --

SELECT category FROM analytics GROUP BY category HAVING COUNT(app_name) > 300;

-- Find all categories with more than 300 apps in them --

SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion 
    FROM analytics
    WHERE min_installs >= 100000
    ORDER BY proportion
    LIMIT 1; 

-- find name, reviews, and min installs of app with highest proportion of installs to --
-- reviews where app has been installed at least 100,000 times --


