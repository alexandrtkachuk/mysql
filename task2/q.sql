DROP TABLE IF EXISTS test2;

 DELIMITER //
create procedure fun1() 
begin
    set @p := 0;
    while @p<=700000 do 
        set @p:=@p+1;
        set @t:= HEX(FLOOR(RAND() * 25600000));
        INSERT INTO test2( num, myvar ,mytext) VALUES (@p , 
            @t , md5(@t) );

    end while;

end;


 







 //
  DELIMITER ;
    CREATE TABLE test2 (num INT, myvar VARCHAR(255), mytext TEXT);
    call fun1();
    drop procedure  IF EXISTS fun1;
    
   /* ALTER TABLE test2 ADD FULLTEXT  (mytext);

   SELECT num FROM test2;*/
