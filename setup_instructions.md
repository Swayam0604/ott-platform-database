### OTT Platform Database Setup Instructions

-----

## Prerequisites

  * MySQL 8.0 or higher installed on your system
  * MySQL Workbench (optional, for GUI management)
  * Command line access or MySQL client

-----

## Quick Setup Guide

### Step 1: Clone Repository

```bash
git clone https://github.com/Swayam0604/ott-platform-database.git
cd ott-platform-database
```

### Step 2: Create Database

Open MySQL command line or MySQL Workbench and run:

```sql
CREATE DATABASE ott_platform;
USE ott_platform;
```

### Step 3: Import Database Schema

#### Option A: Using MySQL Command Line

Navigate to the project directory:

```bash
cd ott-platform-database
```

Import all table structures:

```bash
mysql -u root -p ott_platform < database/schema/tables/project_1_address.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_available_languages.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_casts.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_devices.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_downloads.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_episodes.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_genre_types.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_genres.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_language_options.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_movies.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_payment_history.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_payments.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_reviews.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_roles.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_routines.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_subscription.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_subscription_plan.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_tv_series.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_user.sql
mysql -u root -p ott_platform < database/schema/tables/project_1_watchlist.sql
```

Import views after tables are created:

```bash
mysql -u root -p ott_platform < database/schema/views/movie_details_view.sql
mysql -u root -p ott_platform < database/schema/views/tv_series_details_view.sql
mysql -u root -p ott_platform < database/schema/views/user_subscription_dashboard.sql
```

#### Option B: Using MySQL Workbench

1.  Open MySQL Workbench and connect to your server.
2.  Create a new database: `CREATE DATABASE ott_platform;`
3.  Use the database: `USE ott_platform;`
4.  Open each SQL file from `database/schema/tables/` and execute them.
5.  Open each SQL file from `database/schema/views/` and execute them.

-----

### Step 4: Verify Installation

```sql
-- Check if all tables were created
SHOW TABLES;
-- Verify views were created
SHOW FULL TABLES WHERE Table_type = 'VIEW';
-- Test the views
SELECT COUNT(*) FROM movie_details_with_genre_and_language_view;
SELECT COUNT(*) FROM tv_series_details_with_genre_and_language_view;
SELECT COUNT(*) FROM user_subscription_dashboard;
```

-----

### Step 5: Test with Sample Queries (Optional)

```sql
-- Load and run sample queries
SOURCE database/queries/sample_queries.sql;
```

-----

## Database Structure Overview

### Tables (20 Total)

  * **User Management**: `user`, `address`, `devices`
  * **Content Catalog**: `movies`, `tv_series`, `episodes`, `casts`, `roles`
  * **Content Metadata**: `genres`, `genre_types`, `language_options`, `available_languages`
  * **Subscription System**: `subscription`, `subscription_plan`, `payments`, `payment_history`
  * **User Engagement**: `watchlist`, `reviews`, `downloads`

### Views (3 Total)

  * **movie\_details\_with\_genre\_and\_language\_view**: Complete movie information with genres and languages.
  * **tv\_series\_details\_with\_genre\_and\_language\_view**: Complete TV series information with metadata.
  * **user\_subscription\_dashboard**: Business intelligence view for user and subscription analytics.

-----

## Key Features

✅ **Normalized Database Design** - 3NF compliance ensuring data integrity.
✅ **Complex Relationships** - Proper foreign key constraints between tables.
✅ **Business Intelligence Views** - Ready-made views for analytics and reporting.
✅ **Multi-language Support** - Content available in multiple languages.
✅ **Subscription Management** - Complete billing and payment tracking.
✅ **User Engagement Tracking** - Watchlists, reviews, and download analytics.

-----

## Troubleshooting

### Foreign Key Constraint Errors

If you encounter foreign key errors during import, try:

```sql
SET FOREIGN_KEY_CHECKS = 0;
-- Import your tables here
SET FOREIGN_KEY_CHECKS = 1;
```

### Import Order Issues

Ensure tables are imported before views. Tables with foreign keys should be imported after their referenced tables.

### Permission Issues

Make sure your MySQL user has `CREATE`, `INSERT`, and `SELECT` permissions on the database.

-----

## Next Steps

After a successful setup, you can:

  * Explore the database structure using the ER diagram in `database/documentation/`.
  * Run sample queries from `database/queries/sample_queries.sql`.
  * Add your own sample data for testing.
  * Use the views for reporting and analytics.

-----

## Support

For issues or questions about this database setup, please refer to the main `README.md` or check the documentation in the `database/documentation/` folder.

-----

**Database designed and implemented by Swayam Haravawde**
**Part of Full Stack Development program at IT Vedant Institute**