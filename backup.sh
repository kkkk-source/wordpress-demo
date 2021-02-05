docker exec wordpress-demo_db_1 /usr/bin/mysqldump --no-tablespaces -u toor --password=toor toor > backup.sql

cat backup.sql | docker exec -i wordpress-demo_db_1 /usr/bin/mysql -u toor --password=toor toor
