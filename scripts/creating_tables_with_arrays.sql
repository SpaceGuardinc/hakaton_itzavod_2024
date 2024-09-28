CREATE TABLE table_with_array (
    email String,
    names Array(String)
) ENGINE = MergeTree()

CREATE TABLE table_with_array2 (
    phone String,
    names Array(String)
) ENGINE = MergeTree()
ORDER BY phone;

CREATE TABLE table_with_array3 (
    email String,
    names Array(String)
) ENGINE = MergeTree()
ORDER BY email;

CREATE TABLE table_with_array4 (
    phone String,
    names Array(String)
) ENGINE = MergeTree()
ORDER BY phone;

