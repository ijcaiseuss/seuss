--Actual size: 138799
--SQL Server estimate: 41162
SELECT DISTINCT lineitem.l_orderkey, supplier.s_suppkey, orders.o_orderkey
FROM orders, customer, lineitem, supplier, part
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_extendedprice = part.p_retailprice
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND part.p_brand = 'Brand#52'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipmode = 'REG AIR';


