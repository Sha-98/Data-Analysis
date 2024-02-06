SELECT * FROM financial_loan;


SELECT
	DATENAME(MONTH, issue_date) as loan_month,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY DATENAME(MONTH, issue_date), MONTH(issue_date)
ORDER BY MONTH(issue_date);


SELECT
	address_state,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;



SELECT
	term,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY term
ORDER BY term;


SELECT
	emp_length,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;


SELECT
	purpose,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY purpose
ORDER BY total_loan_amount DESC;


SELECT
	home_ownership,
	COUNT(id) as total_loans,
	SUM(loan_amount) as total_loan_amount,
	SUM(total_payment) as total_amount_received
FROM financial_loan
GROUP BY home_ownership
ORDER BY total_loans DESC;