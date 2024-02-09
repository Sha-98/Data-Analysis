SELECT * FROM financial_loan;


SELECT MONTH(issue_date) as issue_month, COUNT(id) as good_loan
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
GROUP BY 
	MONTH(issue_date)
ORDER BY 
		issue_month;


SELECT COUNT(id) as good_loan
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


SELECT SUM(loan_amount) as good_loan_amount
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


SELECT SUM(total_payment) as good_loan_amount_received
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


SELECT COUNT(id) as bad_loan
FROM financial_loan
WHERE loan_status = 'Charged Off';


SELECT SUM(loan_amount) as bad_loan_amount
FROM financial_loan
WHERE loan_status = 'Charged Off';


SELECT SUM(total_payment) as bad_loan_amount_received
FROM financial_loan
WHERE loan_status = 'Charged Off';


SELECT
	loan_status,
	COUNT(id) as total_loan_app,
	SUM(loan_amount) AS total_loan_amount,
	SUM(total_payment) as total_amount_received,
	ROUND(AVG(int_rate)*100, 2) AS avg_int_rate_per_month,
	ROUND(AVG(dti)*100, 2) AS avg_dti_per_month
FROM 
	financial_loan
GROUP BY 
	loan_status;

SELECT
	loan_status,
	COUNT(id) as total_loan_app,
	SUM(loan_amount) AS total_loan_amount,
	SUM(total_payment) as total_amount_received,
	ROUND(AVG(int_rate)*100, 2) AS avg_int_rate_per_month,
	ROUND(AVG(dti)*100, 2) AS avg_dti_per_month
FROM 
	financial_loan
WHERE MONTH(issue_date) = 5
GROUP BY 
	loan_status;