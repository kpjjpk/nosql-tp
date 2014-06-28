()
MATCH
	(l:LineItem)
WHERE
	l.l_shipdate <= {date}
RETURN
	l.l_returnflag,
	l.l_linestatus,
	sum(l.l_quantity) AS sum_qty,
	sum(l.l_extendedprice) AS sum_base_price,
	sum(l.l_extendedprice)*(1-l.l_discount) AS sum_disc_price,
	sum(l.l_extendedprice)*(1-l.l_discount)*(1+l.l_tax) AS sum_charge,
	avg(l.l_quantity) AS avg_qty,
	avg(l.l_extendedprice) AS avg_price,
	avg(l.l_discount) AS avg_disc,
	count(*) AS count_order
ORDER BY
	l.l_returnflag,
	l.l_linestatus
;
