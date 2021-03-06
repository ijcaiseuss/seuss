--Actual size: 23517
--SQL Server estimate: 39413
SELECT DISTINCT lineitem.l_linenumber, orders.o_orderkey, partsupp.ps_partkey
FROM part, lineitem, partsupp, orders, supplier
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND partsupp.ps_suppkey = supplier.s_suppkey
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';


