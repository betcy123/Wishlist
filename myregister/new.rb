require"sinatra"
require_relative "connect"

   get"/"do 

erb:register1
end

   post '/submit' do

@name=params[:NAME]
@email=params[:EMAIL]
@pwd=params[:PASSWORD]
@conf=params[:CONFIRM]
@phone=params[:PHONE ]




dbh=@db.prepare("INSERT INTO register(Name,Email,Phoneno,Password) VALUES (?,?,?,?)" )
puts "Record has been created"
dbh.execute(@name,@email,@pwd,@conf,@phone)


#result=@db.query("SELECT *from student").each do |row|
 
#end

dbh.finish
dbh.commit
end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
