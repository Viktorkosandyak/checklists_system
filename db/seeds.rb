10.times do
  Checklist.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph)
end

20.times do
  Question.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph, checklist_id: Checklist.all.ids.sample)
end
