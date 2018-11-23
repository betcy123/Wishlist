require 'active_record' 


ActiveRecord::Base.establish_connection(
  	:adapter => "mysql2",  
	:host => "localhost",  
	:database => "candidate",
        :username => "jyojith",
        :password => "root"
)  
  
