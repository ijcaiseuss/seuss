SELECT DISTINCT LINEITEM.L_ORDERKEY, LINEITEM.L_LINENUMBER
FROM LINEITEM, ORDERS, PART
WHERE  
LINEITEM.L_RETURNFLAG = 'N' AND
LINEITEM.L_LINESTATUS = 'O' AND
LINEITEM.L_SHIPDATE=LINEITEM.L_COMMITDATE AND
LINEITEM.L_ORDERKEY = ORDERS.O_ORDERKEY AND
ORDERS.O_TOTALPRICE = PART.P_RETAILPRICE;

