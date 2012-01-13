class User < ActiveRecord::Base
  attr_accessor :email_confirmation, :password_confirmation

  attr_accessible :user_name, :first_name, :last_name, :email
  attr_accessible :recieve_email
  attr_protected :admin

  validates :user_name, :presence => true,
                        :uniqueness => true

  validates :last_name, :presence => true
  validates :first_name, :presence => true

  validates :email, :presence => true,
                    :confirmation => true,
                    :uniqueness => true

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
