-- User Subscription Dashboard View
-- Comprehensive business intelligence view combining user, subscription, payment data
-- Provides complete customer lifecycle and revenue tracking for OTT platform
-- Author: Swayam Haravawde
-- Created: 2025-09-22

DROP VIEW IF EXISTS user_subscription_dashboard;

CREATE VIEW user_subscription_dashboard AS
SELECT 
    u.User_Id,
    u.First_Name,
    u.Last_Name,
    u.User_Name,
    s.Subscription_Id,
    s.Subscription_start_date,
    s.Subscription_end_date,
    CASE 
        WHEN s.subscription_status = 1 THEN 'Active'
        WHEN s.subscription_status = 0 THEN 'Inactive'
        ELSE 'Unknown'
    END AS subscription_status_text,
    s.subscription_status,
    sp.subscription_plan_Id AS Subscription_Plan_Id,
    sp.subscription_plan_Name AS Subscription_Plan_Name,
    sp.subscription_price,
    p.Payment_Id,
    p.Payment_method,
    p.Payment_date,
    ph.Payment_history_Id,
    ph.Payment_status
FROM user u
    LEFT JOIN subscription s ON u.User_Id = s.User_Id
    LEFT JOIN subscription_plan sp ON s.subscription_Plan_Id = sp.subscription_plan_Id
    LEFT JOIN payments p ON s.Subscription_Id = p.Subscription_Id
    LEFT JOIN payment_history ph ON p.Payment_Id = ph.Payment_Id
ORDER BY u.User_Id, s.Subscription_start_date DESC;
