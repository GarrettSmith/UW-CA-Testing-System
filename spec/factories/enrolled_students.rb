# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enrolled_student do
    student
    section
  end
end
