<?php
/**
 * Created by PhpStorm.
 * User: alextk
 * Date: 05.10.18
 * Time: 9:40
 */


$db = new PDO('mysql:host=localhost'  . ';dbname=db_other;',
    'other', 'Xqy7DtXQE3qojtnS8ovB');



$db->prepare('CREATE TEMPORARY TABLE   MyTemp  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(1024),
  rev VARCHAR(1024),
  PRIMARY KEY (id)
)'

)->execute();



$sth = $db->prepare('INSERT INTO MyTemp (name, rev) VALUES(?,?);');


echo getSizeDB($db), "\n";
sleep(5);
$temp = []; //для того чтоб забивать память

$max_count = 10000000;
$step = $max_count / 10;
for ($i = 0; $i < $max_count; $i++) {

    $tmp = [];
        for($j = 0; $j < 30; $j++) {
            $tmp[] = md5(rand(0, time())) ;
        }

    $val =  implode('|', $tmp);
    $sth->execute([$val, strrev($val)]);
    #$temp[] = $val;

    if( $i%$step == 0 ) {
        echo $i, "\n";
        printf("memory usage: %.2f Mb\n", memory_get_usage()/(1024 * 1024));
        //echo strlen($val), "\n";
    }

    #echo $val, "\n";
    #echo strrev($val), "\n";
    #break;
}

echo "step2\n";
sleep(5);
/*
$sth = $db->prepare('SELECT * FROM MyTemp');
$sth->execute();
$result = $sth->fetchAll(\PDO::FETCH_ASSOC);

#echo count($result), "\n";
#print_r($result);
#*/
echo getSizeDB($db), "\n";


function getSizeDB(\PDO $db)
{

    $sth = $db->prepare('SELECT  SUM(round(((data_length + index_length) / 1024 / 1024 ), 2)) `Size in MB`  '
        . 'FROM information_schema.TABLES  WHERE table_schema=:base ORDER BY (data_length + index_length) DESC');

    $sth->bindValue(':base', 'db_other');
    $sth->execute();
    $result = $sth->fetch();
    //print_r($result);
    return $result['Size in MB'];
}

