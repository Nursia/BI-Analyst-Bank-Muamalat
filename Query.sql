WITH Penjualan as(
select 
Orders.Date as order_date,
ProductCategory.CategoryName as category_name,
Products.ProdName as product_name, 
Products.Price as product_price,
Orders.Quantity as order_qty,
Products.Price*orders.Quantity as total_sales, 
Customers.CustomerEmail as cust_email, 
Customers.CustomerCity as cust_city, 

from `Penjualan.Orders` as Orders
left join `Penjualan.Customers` as Customers on Orders.CustomerID = Customers.CustomerID
left join `Penjualan.Products` as Products on Orders.ProdNumber = Products.ProdNumber
left join `Penjualan.ProductCategory` as ProductCategory on Products.Category = ProductCategory.CategoryID
order by Orders.Date asc
)

select * from Penjualan
