# OTT Platform Database Management System

A comprehensive MySQL database solution for managing streaming platform operations including user management, content catalog, subscriptions, and payment processing.

![Database](https://img.shields.io/badge/Database-MySQL-blue)
![Tables](https://img.shields.io/badge/Tables-20+-green)
![Views](https://img.shields.io/badge/Views-3-orange)
![Status](https://img.shields.io/badge/Status-Complete-success)


-----

## 🚀 Project Overview

This database system handles complete OTT platform operations with **20+ normalized tables** and **3 advanced business intelligence views**. Designed and implemented as part of Full Stack Development program at IT Vedant Institute.

### What It Manages:

  * **User Management**: Registration, profiles, authentication, and user tracking
  * **Content Catalog**: Movies, TV series, episodes with comprehensive metadata
  * **Subscription System**: Multiple subscription plans with automated billing
  * **Payment Processing**: Complete transaction tracking and payment history
  * **Content Organization**: Multi-genre classification and multi-language support
  * **User Engagement**: Watchlists, reviews, downloads, and user analytics

-----

## 📊 Database Architecture

\!(database/documentation/ER\_diagram.png)

### Database Statistics:

  * **📋 Tables**: 20 normalized tables with proper relationships
  * **🔍 Views**: 3 business intelligence views for analytics
  * **🔗 Relationships**: Complex foreign key relationships ensuring data integrity
  * **📈 Scalability**: Designed to handle millions of users and content items

-----

## 🛠 Technologies Used

  * **Database**: MySQL 8.0
  * **Design Tool**: MySQL Workbench
  * **Approach**: Normalized database design (3NF compliance)
  * **Documentation**: Professional ER diagrams and comprehensive setup guide

-----

## ⚡ Quick Start

### Prerequisites

  * MySQL 8.0 or higher
  * MySQL Workbench (optional)

### Installation

1.  **Clone the repository**:

    ```bash
    git clone https://github.com/Swayam0604/ott-platform-database.git
    cd ott-platform-database
    ```

2.  **Create database**:

    ```sql
    CREATE DATABASE ott_platform;
    USE ott_platform;
    ```

3.  **Import schema**:

    Import all tables and views. See https://www.google.com/search?q=setup\_instructions.md for detailed steps.

    ```bash
    See setup_instructions.md for detailed steps
    ```

4.  **Verify installation**:

    ```sql
    SHOW TABLES;
    SHOW FULL TABLES WHERE Table_type = 'VIEW';
    ```

📖 **For detailed setup instructions, see [setup\_instructions.md](https://www.google.com/search?q=setup_instructions.md)**

-----

## 📈 Key Features

### Advanced Database Design

  * ✅ **Normalized Structure**: 3NF compliance ensuring data integrity
  * ✅ **Complex Relationships**: Proper many-to-many relationships with junction tables
  * ✅ **Performance Optimized**: Strategic indexing and query optimization
  * ✅ **Scalable Architecture**: Designed for enterprise-level usage

### Business Intelligence Views

  * 🎬 **Movie Details View**: Complete movie information with genres and languages
  * 📺 **TV Series Details View**: Comprehensive series data with episode tracking
  * 👥 **User Subscription Dashboard**: Business analytics for customer management

### Real-World Applications

  * 🎯 **Content Management**: Netflix/Amazon Prime style content organization
  * 💰 **Revenue Tracking**: Complete subscription and payment analytics
  * 📊 **User Analytics**: Engagement tracking and recommendation engine ready
  * 🌍 **Multi-language Support**: Global content distribution capabilities

-----

## 🔍 Sample Queries

```sql
-- Get all movies with their genres and languages
SELECT * FROM movie_details_with_genre_and_language_view
WHERE Available_Genres LIKE '%Action%';
-- Analyze subscription revenue by plan
SELECT Subscription_Plan_Name, COUNT(*) as subscribers,
SUM(subscription_price) as total_revenue
FROM user_subscription_dashboard
WHERE subscription_status_text = 'Active'
GROUP BY Subscription_Plan_Name;
-- Find most popular content by downloads
SELECT Movie_Title, Download_Count, Available_Genres
FROM movie_details_with_genre_and_language_view
ORDER BY Download_Count DESC LIMIT 10;
```

-----

## 📁 Project Structure

```
ott-platform-database/
├── README.md
├── setup_instructions.md
├── database/
│   ├── schema/
│   │   ├── tables/          # All table creation scripts
│   │   └── views/           # Business intelligence views
│   ├── queries/             # Sample queries and examples
│   └── documentation/       # ER diagram and technical docs
```

-----

## 🎯 Business Use Cases

### For Streaming Platforms

  * **Content Catalog Management**: Organize movies, series, episodes
  * **User Experience**: Personalized watchlists, reviews, recommendations
  * **Subscription Management**: Multiple plans, billing, payment tracking
  * **Analytics & Reporting**: User engagement, content performance, revenue analysis

### For Developers & Analysts

  * **Database Design Reference**: Professional-grade normalized structure
  * **Business Intelligence**: Ready-made views for analytics and reporting
  * **Learning Resource**: Complex SQL examples and advanced database concepts
  * **Portfolio Project**: Demonstrates enterprise database development skills

-----

## 👨‍💻 About This Project

  * **Developer**: Swayam Harawade
  * **Program**: Full Stack Development at IT Vedant Institute
  * **Focus**: Database Design, Data Modeling, Business Intelligence
  * **Timeline**: 2025

### Skills Demonstrated

  * **Database Architecture**: Complex system design with 20+ interconnected tables
  * **Advanced SQL**: JOINs, subqueries, views, stored procedures, triggers
  * **Business Intelligence**: Analytics-ready views and reporting capabilities
  * **Documentation**: Professional project documentation and setup guides
  * **Real-World Application**: Complete OTT platform backend implementation

-----

## 📊 Database Highlights

| Feature | Details |
| :--- | :--- |
| **Tables** | 20+ normalized tables covering all aspects of OTT operations |
| **Views** | 3 advanced views for business intelligence and analytics |
| **Relationships** | Complex foreign key relationships ensuring data integrity |
| **Use Cases** | User management, content catalog, subscriptions, payments, analytics |
| **Scalability** | Enterprise-ready architecture supporting millions of records |

-----

## 🤝 Contributing

This project is part of my learning journey. Feel free to:

  * ⭐ Star this repository if you find it helpful
  * 🍴 Fork it for your own learning
  * 📝 Suggest improvements or optimizations
  * 💬 Connect with me on LinkedIn for discussions

-----

## 📜 License

This project is open source and available under the [MIT License](https://www.google.com/search?q=LICENSE).

-----

## 📫 Connect With Me

  * **LinkedIn**: [Swayam Harawade](https://linkedin.com/in/swayam-harawade)
  * **GitHub**: [@Swayam0604](https://github.com/Swayam0604)
  * **Email**: [swayamharawade0604@gmail.com]

-----

**⭐ If this project helped you understand database design or inspired your own work, please give it a star\!**

*Built with 💻 passion for database design and business intelligence*

