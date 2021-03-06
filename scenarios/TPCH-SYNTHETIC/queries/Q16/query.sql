--Actual size: 13119
--SQL Server estimate: 16023
SELECT DISTINCT partsupp.ps_suppkey, lineitem.l_linenumber, customer.c_custkey, orders.o_orderkey
FROM part, orders, customer, lineitem, partsupp
WHERE part.p_retailprice = orders.o_totalprice
	 AND orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_commitdate
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND orders.o_orderstatus = 'O'
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';


