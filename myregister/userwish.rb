require_relative "userprocess.rb"
 
 get '/wish' do 
	 erb :addwish
 end

post '/wish' do

	erb :addwish 

end
