# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    category "MyString"
    style "MyString"
    name "MyString"
    brewed_by "MyString"
    ABV 1.5
  end
end
