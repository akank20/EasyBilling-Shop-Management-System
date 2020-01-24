Create table Product(Item_code int primary key, Item_name varchar(30), Qty int, P_price int, M_price int, S_price int, Reorder_level int);

Create table Customer(Cust_id int primary, name varchar(40), Email varchar(50), Mobile int, Addr varchar(50), pswd varchar(30), status varchar(10));

Create table Order(Order_no int primary key, Item_code int References Product(Item_code), Qty int, Amount int, status char);

Create table Bill_details(Item_code int primary key, Bill_no int References Bill_Summary(Bill_No), Qty int, S_price int, amt int, P_price int);

Create table Bill_Summary(Bill_No int primary key, Bill_date date, cust_id int References Customer(Cust_id), amt int, tot_pur int References Product(P_price));

Create Trigger Product_qty Before Insert on Product 
For each Row Begin
Begin
If(Qty<Reorder_level) Then
	Signal sqlstate '45000'
	Set message_text='Qty required!'
End If
End;

Create Trigger Product_MP Before Insert on Product
For each Row Begin
Begin
If(M_price<P_price) Then
	Signal sqlstate '45000'
	Set message_text='Marked Price Error!'
End If
End;

Create Trigger Product_SP Before Insert on Product
For each Row Begin
Begin
If(S_price<M_price) Then
	Signal sqlstate '45000'
	Set message_text='Marked Price Error!'
End If
End;

Create Trigger Cust_pswd Before Insert on Customer
For each Row Begin
Begin
If(pswd.length<8) Then
	Signal sqlstate '45000'
	Set message_text='Password should be atleast 8 characters!'
End If
End;


Create Trigger Order_amt Before Insert on Order
For each Row Begin
Begin
Set New.Amount=New.Qty*New.S_Price
End;

Create Trigger Order_Pp Before Insert on Order
For each Row Begin
Begin
If(P_price<S_Price) Then
	Signal sqlstate '45000'
	Set message_text='Error!'
End If
End;

Create Trigger Bill_Pp Before Insert on Bill_Summary
For each Row Begin
Begin
Set New.tot_pur=New.Qty*New.P_Price
End;