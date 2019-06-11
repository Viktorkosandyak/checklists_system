FactoryBot.define do
  factory :question do
    title  { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    checklist_id  {  FactoryBot.create(:checklist).id }
  end
end
