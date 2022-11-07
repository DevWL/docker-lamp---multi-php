<?php
echo "<a href='http://localhost:82'>php8.2rc5</a> | ";
echo "<a href='http://localhost:81'>php8.1</a> | ";
echo "<a href='http://localhost:80'>php8.0</a> | ";
echo "<a href='http://localhost:74'>php7.4</a> | ";
echo "<a href='http://localhost:73'>php7.3</a> | ";
echo "<a href='http://localhost:72'>php7.2</a> | ";
echo "<a href='http://localhost:71'>php7.1</a> | ";
echo "<a href='http://localhost:70'>php7.0</a> | ";
echo "<a href='http://localhost:56'>php5.6</a><br><br>";

echo "This is index page PHP: " . PHP_VERSION . PHP_EOL . "<br>";

$servername = "db";
$username = "root";
$password = "root";
$database = "lamp";

try 
{
        $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully";
        $result = $conn->query('SELECT * FROM news');
}
catch(PDOException $e)
{
        echo "Connection failed: " . $e->getMessage();
}

foreach ($result as $key => $value) {
    echo $value["id"]. "<br>";
    echo $value["title"]. "<br>";
    echo $value["body"]. "<br>";
}

    

class Post
{
    public $name;

    public function __construct(
        $title, 
        $author,
        $body,
        $publishedAt
    ) {}
}

new Post("News", "Wiktor", "some text", "time");

phpinfo();