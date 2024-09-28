SELECT
    phone,
    names
FROM (
    SELECT
        phone,
        groupArray(names) AS names,
        count(*) AS name_count
    FROM
        table_with_array2
    GROUP BY
        phone
) AS grouped
WHERE name_count > 1;

SELECT
    phone,
    count(*) AS count
FROM
    table_with_array2
GROUP BY
    phone
ORDER BY
    count DESC
LIMIT 10;

SELECT
    phone,
    count(*) AS count
FROM
    table_with_array4
GROUP BY
    phone
ORDER BY
    count DESC;
LIMIT 10;


SELECT
    t2.phone,
    t2.names AS names_from_table2,
    t4.*
FROM
    table_with_array2 AS t2
JOIN
    table_with_array4 AS t4
ON
    t2.phone = t4.phone;


SELECT
    d.uid,
    d.full_name,
    d.email,
    d.address,
    d.sex,
    d.birthdate,
    d.phone,
    a1_flat.name AS names_from_array1,
    a2_flat.phone AS names_from_array2,
    a3_flat.name AS names_from_array3,
    a4_flat.phone AS names_from_array4
FROM table_dataset1 AS d
LEFT JOIN (
    SELECT DISTINCT email, arrayJoin(names) AS name FROM table_with_array
) AS a1_flat ON a1_flat.name = d.email
LEFT JOIN (
    SELECT DISTINCT phone FROM table_with_array2
) AS a2_flat ON d.phone = a2_flat.phone
LEFT JOIN (
    SELECT DISTINCT email, arrayJoin(names) AS name FROM table_with_array3
) AS a3_flat ON a3_flat.name = d.email
LEFT JOIN (
    SELECT DISTINCT phone FROM table_with_array4
) AS a4_flat ON d.phone = a4_flat.phone
LIMIT 10
