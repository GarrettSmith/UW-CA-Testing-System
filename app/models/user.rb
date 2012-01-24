class User < ActiveRecord::Base
  has_one :student
  has_one :professor

  attr_accessor :email_confirmation, :password_confirmation

  attr_accessible :user_name, :first_name, :last_name, :email
  attr_accessible :recieve_email
  attr_protected :admin

  validates :user_name, :presence => true,
                        :uniqueness => { :case_sensitive => false }

  validates :last_name, :presence => true
  validates :first_name, :presence => true

  # an email regex stolen from 
  # http://ruby.railstutorial.org/chapters/modeling-and-viewing-users-one#code:validates_format_of_email
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence => true,
                    :confirmation => true,
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }

  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => { :in => 6..20 }

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
