# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    name { Faker::Name.name }
    category
    style
  end
end
