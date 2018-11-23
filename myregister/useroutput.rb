require_relative "userprocess.rb"

class Createtableusers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :phoneno
    
     end
  end
