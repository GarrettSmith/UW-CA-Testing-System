# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :question do
    name { Faker::Lorem.words(3) }
    text { Faker::Lorem.paragraph }
    possible_marks 5
    section_test
  end
end
