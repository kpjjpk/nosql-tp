()
CREATE (l:LineItem
{ 
	l_linenumber: 1,
	l_quantity: 100,
	l_extendedprice: 50,
	l_discount: 10,
	l_tax: 5,
	l_returnflag: 1, 
	l_linestatus: 2,
	l_shipdate: 1403199078825,
	l_commitdate: 123456,
	l_receiptdate: 7891011,
	l_shipinstruct: 12131415, //aca poner un index! (q1)
	l_shipmode: 'cargo',
	l_shipcomment: "I'm on a boat!"
})
;