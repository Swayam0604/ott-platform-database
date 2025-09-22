-- Movie Details with Genre and Language View
-- Provides comprehensive movie information including genres and available languages
-- Combines movie data with genre types and language options using GROUP_CONCAT
-- Author: Swayam Haravawde
-- Created: 2025-09-22

DROP VIEW IF EXISTS movie_details_with_genre_and_language_view;

CREATE VIEW movie_details_with_genre_and_language_view AS
SELECT 
    m.Movie_Id,
    m.Movie_Title,
    m.Movie_description AS Movie_Description,
    m.Movie_Duration,
    m.Movie_Release_Date,
    m.Download_Count,
    GROUP_CONCAT(DISTINCT gt.Genre_Type_Name ORDER BY gt.Genre_Type_Name ASC SEPARATOR ', ') AS Available_Genres,
    GROUP_CONCAT(DISTINCT lo.Language_name ORDER BY lo.Language_name ASC SEPARATOR ', ') AS Available_Languages
FROM movies m
    LEFT JOIN genres g ON m.Movie_Id = g.Movie_Id
    LEFT JOIN genre_types gt ON g.Genre_Type_Id = gt.Genre_Type_Id
    LEFT JOIN language_options lo ON m.Movie_Id = lo.Movie_Id
GROUP BY 
    m.Movie_Id,
    m.Movie_Title,
    m.Movie_description,
    m.Movie_Duration,
    m.Movie_Release_Date,
    m.Download_Count;
