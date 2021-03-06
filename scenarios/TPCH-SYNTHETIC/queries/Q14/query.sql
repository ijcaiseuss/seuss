--Actual size: 1186
--SQL Server estimate: 23077
SELECT DISTINCT nation.n_nationkey, supplier.s_suppkey, orders.o_orderkey
FROM orders, customer, lineitem, nation, supplier
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND customer.c_nationkey = nation.n_nationkey
	 AND customer.c_acctbal = supplier.s_acctbal
	 AND lineitem.l_returnflag = 'N'
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND orders.o_orderstatus = 'O'
	 AND lineitem.l_linestatus = 'O';


