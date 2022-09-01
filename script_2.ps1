$uri = 'http://localhost:8080/api/Chat'
$value = Invoke-RestMethod -Method Get -Uri $uri
$content = $value.content


sleep 10
docker exec -i mydbcontainer mysql -u root -p"$env:password" -e "create database demo;"

docker exec -i mydbcontainer mysql -u root -p"$env:password" -D demo -e "create table messages(id int , message varchar(255));"

docker exec -i mydbcontainer mysql -u root -p"$env:password" -D demo  -e "insert into messages(message) values('$content');"
