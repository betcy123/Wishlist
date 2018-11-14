class connection

begin

@db_host  = "localhost"
@db_user  = "jyojith"
@db_pass  = "root"
@db_name = "register"
 
db = db_connection
client = Mysql::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name).connection
@result = client.query("SELECT * from register')
end
end

class acess

