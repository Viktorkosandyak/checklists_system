FactoryBot.define do
  factory :checklist do
    title  { Faker::Name.name }
    description { Faker::Lorem.paragraph }
  end
end
