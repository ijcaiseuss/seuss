--Actual size: 4455
--SQL Server estimate: 42246
SELECT DISTINCT lineitem.l_linenumber, supplier.s_suppkey, lineitem.l_orderkey
FROM lineitem, supplier, customer, nation, orders
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND customer.c_nationkey = nation.n_nationkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND lineitem.l_linestatus = 'F'
	 AND nation.n_name = 'GERMANY';


