cat dataset1.csv | clickhouse-client --query="insert into table_dataset1 format csv"
cat dataset2.csv | clickhouse-client --query="INSERT INTO table_dataset2 FORMAT CSV"
cat dataset3.csv | clickhouse-client --query="INSERT INTO table_dataset3 FORMAT CSV"