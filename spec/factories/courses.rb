# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :course do |c|
    c.name { Faker::Company.bs }
    c.number { Faker::Address.postcode }
    c.department_code { Faker::Address.state_abbr }
  end
end
