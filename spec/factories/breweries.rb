# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :brewery do
    brewery_name { Faker::Name.brewery_name }
  end
end
