require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :first_name, :presence => true								
  validates :last_name, :presence => true
  validates :gender, :presence => true
  # validates :birthday, :presence => true
  # validates :email, :uniqueness => true, :format => { :with => /.+@.+\..{2,}/, :message => "please type a valid email address" } 
  validates :phone, :format => { :with => /.+\d{3}.+\d{3}.+\d{4}.+/ }
  validates :age, :numericality => { :greater_than => 5 }

	def name
   self.first_name + " " + self.last_name
 end

  def age
    now = Date.today
    now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end
end

  