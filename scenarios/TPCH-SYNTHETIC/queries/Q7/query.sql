--Actual size: 3743
--SQL Server estimate: 47832
SELECT DISTINCT nation.n_nationkey, lineitem.l_orderkey, customer.c_custkey
FROM orders, customer, lineitem, nation
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_totalprice = lineitem.l_extendedprice
	 AND customer.c_nationkey = nation.n_nationkey
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'O'
	 AND orders.o_orderpriority = '5-LOW';


