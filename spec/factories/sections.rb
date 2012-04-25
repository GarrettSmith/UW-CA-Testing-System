# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :section do
    sequence(:number)
    room_number { Faker::Address.postcode }
    association :course
    association :semester
    association :professor
  end
end
