# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :section_test do
    name { [Faker::Company.catch_phrase, "test"].join(" ") }
    description { Faker::Lorem.paragraphs(1) }
    start_time Date.yesterday
    end_time Date.tomorrow
    section
  end
end
