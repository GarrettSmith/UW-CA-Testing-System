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

  private 

    def default_values
      self.admin = false if self.admin.nil?
      self.recieve_email = true if self.recieve_email.nil?
    end
end
