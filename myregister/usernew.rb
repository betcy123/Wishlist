require_relative "userprocess"

   get '/' do 

erb :register1

end

   post '/' do

@name=params[:NAME]
@email=params[:EMAIL]
@pwd=params[:PASSWORD]
@conf=params[:CONFIRM]
@phoneno=params[:PHONENUMBER ]

User.create(:name =>@name,:email =>@email,:password =>@pwd,:phoneno =>@phoneno)

#erb:login

redirect '/login'
                           
#result=@db.query("SELECT *from student").each do |row|
 
#end


end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
