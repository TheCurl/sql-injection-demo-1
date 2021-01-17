$mysql = 'C:\xampp\mysql\bin\mysql'
$user = 'root'
$pass = ''

$sql = @"
CREATE DATABASE inject_demodb;
CREATE USER 'sql_injection'@'%' IDENTIFIED BY 'foobar';
GRANT ALL PRIVILEGES ON `inject_demodb` . * TO 'sql_injection'@'%';
FLUSH PRIVILEGES;
"@

&$mysql -u $user -se $sql



