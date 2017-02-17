CREATE STATISTICS PART_P_PARTKEY
    ON PART(P_PARTKEY) 
WHERE PART.P_MFGR = 'Manufacturer#1' AND
PART.P_BRAND = 'Brand#13';

CREATE STATISTICS SUPPLIER_S_SUPPKEY
    ON SUPPLIER(S_SUPPKEY) 
WHERE SUPPLIER.S_ACCTBAL > 2000;

