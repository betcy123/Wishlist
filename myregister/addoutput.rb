require_relative "addprocess.rb"

class Createtableadds < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.string :Wishname
      t.string :category
      t.string :Description
          
     end
  end
