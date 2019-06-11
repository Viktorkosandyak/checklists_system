# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Checklist.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph)
end

20.times do
  Question.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph, checklist_id: Checklist.all.ids.sample)
end
