# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :brewery do
    brewery_name "MyString"
    brewer_description "MyText"
    website "MyString"
    icon "MyString"
    large_image "MyString"
  end
end
