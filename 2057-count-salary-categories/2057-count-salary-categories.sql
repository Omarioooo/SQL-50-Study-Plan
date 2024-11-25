/* Write your T-SQL query statement below */
SELECT
    category = 'Low Salary', 
    COUNT(account_id) accounts_count
FROM
    Accounts
WHERE
    income < 20000

UNION

SELECT
    'Average Salary', 
    COUNT(account_id) accounts_count
FROM
    Accounts
WHERE
    income >= 20000 
    AND
    income <= 50000

UNION

SELECT
    'High Salary', 
    COUNT(account_id) accounts_count
FROM 
    Accounts
WHERE
    income > 50000
    
ORDER BY
    accounts_count desc; 

       