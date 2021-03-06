--Actual size: 4338
--SQL Server estimate: 314
SELECT DISTINCT partsupp.ps_partkey, lineitem.l_orderkey, part.p_partkey
FROM part, lineitem, partsupp, supplier
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND partsupp.ps_suppkey = supplier.s_suppkey
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipinstruct = 'NONE';


