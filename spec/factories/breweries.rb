# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :brewery do
    brewery_name { Faker::Name.brewery_name }
    brewery_description { Faker::Lorem.sentence }
    website { Faker::Internet.domain_name }
    icon { Faker::Name.icon }
    large_image { Faker::Internet.image }
  end
end
