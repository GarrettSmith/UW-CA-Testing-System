# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :professor do
    office_number { Faker::Address.postcode }
    user
  end
end
