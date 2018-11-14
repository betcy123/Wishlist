class connection
   def self.create_class(new_class, table, db_connection)
   c = Class.new(ActiveRecord::Base) do
   db = db_connection
   self.table_name = table
        establish_connection(:adapter => db.database_type, :host => db.host, :database => db.database, :username => db.username, :password => db.password).connection
      end
