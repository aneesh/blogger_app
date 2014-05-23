# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    contents "MyText"
    published_at "2014-05-24 02:29:53"
  end
end
