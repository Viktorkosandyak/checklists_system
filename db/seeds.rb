User.create(email: 'admin@gmail.com', password: 'Admin1234!', password_confirmation: 'Admin1234!', admin: true)

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password, admin: false)
end


10.times do
  Checklist.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph, parent: true, status: 'published')
end

20.times do
  Question.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph, comment: Faker::Lorem.paragraph, checklist_id: Checklist.all.ids.sample)
end
