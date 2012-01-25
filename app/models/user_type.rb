require 'metaid'

# Include this to be a type of user (student, prof)
# You will need to setup a one-to-one association to User and
# include `after_initialize :setup_user` in your class.
module UserType

  private 

    # Builds a new user if no user is associated with this prof.
    # It then forwards getters and setters for user methods.
    def setup_user
      if @user.nil?
        build_user
      end
      forward_user_attributes
    end

    # Adds a getter and setter for each attribute of User.
    # Just to make things prettier than calling
    # prof.user.user_name
    def forward_user_attributes
      User.attribute_names.each do |attr|
        # Don't allow methods to be over written
        if not self.attribute_names.include?(attr) 
          meta_def attr do self.user.send attr
        end

          meta_def "#{attr}=".to_sym do |x|
            self.user.send "#{attr}=".to_sym, x
          end
        end
      end
    end

end
