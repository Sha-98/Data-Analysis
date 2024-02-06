SELECT * FROM financial_loan;


SELECT 
MONTH(issue_date) as issue_month, 
COUNT(DISTINCT id) as loan_app_per_month
FROM financial_loan
GROUP BY MONTH(issue_date)
ORDER BY issue_month;


SELECT MONTH(issue_date) as issue_month,
SUM(loan_amount) AS total_loan_amount
FROM financial_loan
GROUP BY MONTH(issue_date)
ORDER BY issue_month


SELECT MONTH(issue_date) as issue_month, 
SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY MONTH(issue_date)
ORDER BY issue_month


SELECT MONTH(issue_date) as issue_month, 
ROUND(AVG(int_rate)*100, 2) AS avg_int_rate_per_month
FROM financial_loan
GROUP BY MONTH(issue_date)
ORDER BY issue_month;


SELECT MONTH(issue_date) as issue_month, 
ROUND(AVG(dti)*100, 2) AS avg_dti_per_month
FROM financial_loan
GROUP BY MONTH(issue_date)
ORDER BY issue_month;


SELECT 
	MONTH(issue_date) as issue_month,
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)/COUNT(id) AS good_loan_percentage
FROM 
	financial_loan
GROUP BY 
	MONTH(issue_date)
ORDER BY 
		issue_month;


SELECT
	MONTH(issue_date) as issue_month,
	COUNT(DISTINCT id) as loan_app_per_month,
	SUM(loan_amount) AS total_loan_amount,
	SUM(total_payment) as total_amount_received,
	ROUND(AVG(int_rate)*100, 2) AS avg_int_rate_per_month,
	ROUND(AVG(dti)*100, 2) AS avg_dti_per_month,
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)/COUNT(id) AS good_loan_percentage
FROM 
	financial_loan
GROUP BY 
	MONTH(issue_date)
ORDER BY 
		issue_month;

