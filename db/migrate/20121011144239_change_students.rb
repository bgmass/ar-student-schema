require_relative '../config'

class ChangeStudents < ActiveRecord::Migration
  def change
  	add_column :students, :grade, :integer
  end
 end