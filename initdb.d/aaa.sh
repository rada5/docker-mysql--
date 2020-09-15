pwd
echo "docker-entrypoint-initdb.d"

sleep 50

# db から db2 に データをコピー

echo "mysqldump"
mysqldump -h db -u root -pexample --databases mysql > /tmp/dump.sql
cat /tmp/dump.sql

echo "mysql import"
# mysqld    -h db -u root -pexample --databases aa < /tmp/dump.sql
mysqld -u root -pexample aaa < /tmp/dump.sql

echo "docker-entrypoint-initdb.d"
