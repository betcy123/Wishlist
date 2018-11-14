#!/usr/bin/ruby -w

require "dbi"

begin
   # connect to the MySQL server
   name=params["NAME"];
   email=params["EMAIL"];
   name=params["PASSWORD"];
   name=params["CONFIRM"];
   name=params["PASSWORD"];
   name=params["PHONE NUMBER"];
   dbh = DBI.connect("DBI:Mysql:vision:localhost", "jyojith@mobme", "root")
   sth=dbh.do( "INSERT INTO register(Name,Email,Phoneno,Password)
      VALUES (?,?,?,?)" )
   puts "Record has been created"
   sth.execute(name, email,name,name,name)
   sth.finish
   dbh.commit
rescue DBI::DatabaseError => e
   puts "An error occurred"
   puts "Error code:    #{e.err}"
   puts "Error message: #{e.errstr}"
   dbh.rollback
ensure
   # disconnect from server
   dbh.disconnect if dbh
end

