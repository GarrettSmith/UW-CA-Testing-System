# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name } 
    last_name { Faker::Name.last_name }
    user_name { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password "password"

    factory :admin do
      admin true
    end
  end

end
