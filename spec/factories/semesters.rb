# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :semester do |s|
    s.name { Faker::Lorem.words(2) }
    s.start_time Date.yesterday
    s.end_time Date.tomorrow
  end
end
