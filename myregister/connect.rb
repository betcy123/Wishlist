require"mysql2"
class Connect


def connection(host,name,db,password)

@db = db
@host  =host
@name= name
@pass=password

  client = Mysql2::Client.new(:host => @host, :username => @name, :database => @db,:password=> @pass)
end

 

end


@dbo=Connect.new
@db = @dbo.connection("localhost","jyojith","vision","root")


