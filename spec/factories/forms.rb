FactoryBot.define do
  factory :form do
    title { "MyString" }
    description { "MyText" }
    status { 1 }
    date { "2019-06-22 15:42:57" }
    user { nil }
  end
end
