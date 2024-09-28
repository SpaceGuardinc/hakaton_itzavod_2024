INSERT INTO table_with_array (email, names)
SELECT email, groupArray(t1.uid) as uid 
from table_dataset1 as t1 
group by email;

INSERT INTO table_with_array2 (phone, names)
SELECT phone, groupArray(t2.first_name) as first_name 
from table_dataset2 as t2 
group by phone;

INSERT INTO table_with_array3 (email, names)
SELECT email, groupArray(t3.uid) as uid 
from table_dataset3 as t3 
group by email;

INSERT INTO table_with_array4 (phone, names)
SELECT phone, groupArray(t1.full_name) as full_name 
from table_dataset1 as t1 
group by phone;
