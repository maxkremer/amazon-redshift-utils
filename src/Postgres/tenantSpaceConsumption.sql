/*
   Size of all object belonging to an apitoken
*/

SELECT  relname AS "relation",
    pg_size_pretty(pg_relation_size(C.oid)) AS "size",
    pg_size_pretty(sum( pg_relation_size(C.oid))  over ()) as total
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE relname like '%b69f7439_1a1b_43f7_b340_370ddda961d4%'
  ORDER BY pg_relation_size(C.oid) DESC


