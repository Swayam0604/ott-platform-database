-- Sample Queries for OTT Platform Database
-- Demonstrates practical usage of the database structure and views
-- Author: Swayam Haravawde

-- ============================================
-- BASIC TABLE QUERIES
-- ============================================

-- Get all movies with their details
SELECT Movie_Id, Movie_Title, Movie_Duration, Movie_Release_Date 
FROM movies 
LIMIT 10;

-- Get all active subscriptions
SELECT u.User_Name, sp.subscription_plan_Name, s.Subscription_start_date
FROM user u
JOIN subscription s ON u.User_Id = s.User_Id
JOIN subscription_plan sp ON s.subscription_Plan_Id = sp.subscription_plan_Id
WHERE s.subscription_status = 1;

-- ============================================
-- VIEW-BASED QUERIES
-- ============================================

-- Get movie details with genres and languages
SELECT * FROM movie_details_with_genre_and_language_view
WHERE Available_Genres LIKE '%Action%';

-- Get TV series with multiple languages
SELECT * FROM tv_series_details_with_genre_and_language_view
WHERE Available_Languages LIKE '%,%';

-- User subscription dashboard for active users
SELECT User_Name, Subscription_Plan_Name, subscription_price, subscription_status_text
FROM user_subscription_dashboard
WHERE subscription_status_text = 'Active';

-- ============================================
-- ANALYTICS QUERIES
-- ============================================

-- Most popular genres (by movie count)
SELECT gt.Genre_Type_Name, COUNT(*) as movie_count
FROM genres g
JOIN genre_types gt ON g.Genre_Type_Id = gt.Genre_Type_Id
WHERE g.Movie_Id IS NOT NULL
GROUP BY gt.Genre_Type_Name
ORDER BY movie_count DESC;

-- Revenue by subscription plan
SELECT sp.subscription_plan_Name, 
       COUNT(*) as subscriber_count,
       SUM(sp.subscription_price) as total_revenue
FROM subscription s
JOIN subscription_plan sp ON s.subscription_Plan_Id = sp.subscription_plan_Id
WHERE s.subscription_status = 1
GROUP BY sp.subscription_plan_Name;

-- User engagement - watchlist analysis
SELECT u.User_Name, COUNT(w.Movie_Id) as movies_in_watchlist
FROM user u
LEFT JOIN watchlist w ON u.User_Id = w.User_Id
GROUP BY u.User_Id, u.User_Name
HAVING movies_in_watchlist > 0
ORDER BY movies_in_watchlist DESC;
