# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cloud_config do
    user nil
    accessibility "MyString"
  end
end
