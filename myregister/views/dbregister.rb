require"connect.rb"

begin
   name=params["NAME"]
   email=params["EMAIL"]
   pwd=params["PASSWORD"]
   conf=params["CONFIRM"]
   phone=params["PHONE NUMBER"]


dbh=@dbo do( "INSERT INTO register(Name,Email,Phoneno,Password) VALUES (?,?,?,?)" )
puts "Record has been created"
dbh.execute(name, email,pwd,conf,phone)
dbh.finish
dbh.commit
end
