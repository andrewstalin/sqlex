docker run --rm --name pgsqlex -e POSTGRES_PASSWORD=sai -e POSTGRES_USER=sai -e POSTGRES_DB=sqlex -d -p 5432:5432 -v $HOME/workspace/docker/volumes/pgsqlex:/var/lib/postgresql/data postgres
psql -h 127.0.0.1 -U sai -d sqlex -f sql/sqlex.sql



https://github.com/t1ml3arn-test-assignments/sql-ex.ru-exercises/tree/master/SELECT(learning%20stage)

