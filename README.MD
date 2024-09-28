выполните команду 
cd .\docker-compose\
docker-compose up -d

docker cp D:\hakaton_itzavod_2024\main1.csv clickhouse:/dataset1.csv
docker cp D:\hakaton_itzavod_2024\main2.csv clickhouse:/dataset2.csv
docker cp D:\hakaton_itzavod_2024\main3.csv clickhouse:/dataset3.csv


выполните команду
docker exec -it clickhouse /bin/bash

1) Выполните bash скрипты в папке scrips по очереди в файле bashscripts

выполните команду 
exit

выполните команду
docker exec -it clickhouse clickhouse-client --host=localhost

2) Выполните sql скрипты в папке scrips по очереди add_index_dataset
3) Выполните sql скрипты в папке scrips по очереди creating_tables_with_arrays
4) Выполните sql скрипты в папке scrips по очереди inserting_into
5) Выполните sql скрипты в папке scrips по очереди selects