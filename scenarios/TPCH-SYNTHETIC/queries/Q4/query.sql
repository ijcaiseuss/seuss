--Actual size: 276811
--SQL Server estimate: 2303990
SELECT DISTINCT customer.c_custkey, lineitem.l_orderkey, orders.o_orderkey
FROM orders, customer, lineitem, nation
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND customer.c_nationkey = nation.n_nationkey
	 AND lineitem.l_returnflag = 'R'
	 AND customer.c_mktsegment = 'FURNITURE'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND nation.n_name = 'MOROCCO'
	 AND lineitem.l_shipmode = 'SHIP';


