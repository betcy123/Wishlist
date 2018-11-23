
require_relative "userprocess.rb"
 
 get '/login' do 
	 erb :login
 end

post '/login' do

     @email=params[:EMAIL]
     @pwd=params[:PASSWORD]

    if User.find_by_email(@email)

    if @pwd == User.find_by_email(@email).password
        #if pwd == u.password
     redirect '/wish'
  
    end
    end

end

get '/wish' do
 erb :wish
end

# User.find_by_email("betcy123@gmail.com")

