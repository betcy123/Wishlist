require_relative "addprocess.rb"

 get '/addwish' do 
erb :addwish
end
post '/addwish' do
name=params[:Wishname]
category=params[:category]
description=params[:Description]
puts "#{name}"
Wish.create(:Wishname =>name,:category =>category,:Description=>description)
erb :showwish
#erb:login

                       
#result=@db.query("SELECT *from student").each do |row|
 
#end


end
 get'/showwish' do
     erb :showwish
end
       
