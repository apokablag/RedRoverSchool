use Chinook; 

-- 1. show data from artist table
select * from artist;

-- 2. show last names and name of customers who are from Paris
select LastName, FirstName, City from customer
where City = 'Paris'
ORDER BY FirstName Desc;

-- 3. show sales for 2012 year with price more than 4 bucks

select * From invoice
where total > 4 and InvoiceDate BETWEEN "2012-01-01" AND "2024-01-01"
order by total ASC;

-- 4. show date of invoice, address, city and total price = 16.86
select InvoiceDate, BillingAddress, BillingCity, Total from invoice
where total = '16.86';

-- 5. ыshow last names and first names of employees who started work in 20044 and they live in Lethbridge
select LastName, FirstName from employee
where City = 'Lethbridge' and HireDate Between '2004-01-01' AND '2024-01-01';

-- 6. Show Canadian cities which had sales in 2009
select BillingCity from invoice
where BillingCountry = 'Canada' and InvoiceDate between '2009-01-01' and '2009-12-31';

-- 7. Show last names and first names of employees who were hired in May. 2 methods
-- 1st way with operator LIKE
select * from employee
where HireDate Like '%-05-%';

-- 2nd way with Date Format
select LastName, FirstName, HireDate from employee
where DATE_FORMAT(HireDate, '%c') = 5;

-- 8. Show last names and first names who are IT Staff and IT Manager
-- 1st way
select * from employee
where title IN ('IT Staff', 'IT Manager');

-- 2nd way
select * from employee
where Title Like 'IT%'





