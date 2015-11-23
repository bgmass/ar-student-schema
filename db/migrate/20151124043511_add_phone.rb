require_relative '../config'

class AddPhone < ActiveRecord::Migration
  def change
  	add_column :students, :phone, :string
  end
 end



  