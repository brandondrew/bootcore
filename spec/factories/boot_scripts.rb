# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boot_script do
    file_name "MyString"
    body "MyText"
    user nil
    accessibility "MyString"
  end
end
