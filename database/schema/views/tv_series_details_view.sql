-- TV Series Details with Genre and Language View
-- Provides comprehensive TV series information including genres and available languages
-- Combines TV series data with genre types and language options using GROUP_CONCAT
-- Author: Swayam Haravawde
-- Created: 2025-09-22

DROP VIEW IF EXISTS tv_series_details_with_genre_and_language_view;

CREATE VIEW tv_series_details_with_genre_and_language_view AS
SELECT 
    tv.TV_Series_Id,
    tv.TV_Series_Title,
    tv.TV_Series_Description,
    tv.Episode_Count,
    tv.TV_Series_Release_Date,
    tv.Download_Count,
    GROUP_CONCAT(DISTINCT gt.Genre_Type_Name ORDER BY gt.Genre_Type_Name ASC SEPARATOR ', ') AS Available_Genres,
    GROUP_CONCAT(DISTINCT lo.Language_name ORDER BY lo.Language_name ASC SEPARATOR ', ') AS Available_Languages
FROM tv_series tv
    LEFT JOIN genres g ON tv.TV_Series_Id = g.TV_Series_Id
    LEFT JOIN genre_types gt ON g.Genre_Type_Id = gt.Genre_Type_Id
    LEFT JOIN language_options lo ON tv.TV_Series_Id = lo.TV_Series_Id
GROUP BY 
    tv.TV_Series_Id,
    tv.TV_Series_Title,
    tv.TV_Series_Description,
    tv.Episode_Count,
    tv.TV_Series_Release_Date,
    tv.Download_Count;
