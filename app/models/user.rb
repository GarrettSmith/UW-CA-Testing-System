# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  user_name     :string(255)
#  email         :string(255)
#  first_name    :string(255)
#  last_name     :string(255)
#  admin         :boolean
#  recieve_email :boolean
#  password      :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :student
  has_one :professor

  attr_accessor :email_confirmation

  attr_accessible :user_name, :first_name, :last_name
  attr_accessible :recieve_email
  attr_protected :admin

  validates :user_name, :presence => true,
                        :uniqueness => { :case_sensitive => false }

  validates :last_name, :presence => true
  validates :first_name, :presence => true
  after_initialize :default_values

  # Returns the full name of the user
  # eg. John Smith
  def full_name
    first_name.captialize + " " + last_name.capitalize
  end

  # Returns whether this user is an admin.
  def admin?
    admin
  end

  # Returns whether this user is a student.
  def student?
    not student.nil?
  end

  # Returns whether this user is a professor.
  def professor?
    not professor.nil?
  end

  private 

    # Sets attributes to default values if nil
    def default_values
      self.admin = false if self.admin.nil?
      self.recieve_email = true if self.recieve_email.nil?
    end
end
