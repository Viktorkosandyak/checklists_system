User.create(email: 'admin@gmail.com', password: 'Admin1234!', password_confirmation: 'Admin1234!', admin: true)

5.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password, admin: false)
end

10.times do
  Form.create!(title: Faker::Company.industry, description: Faker::Lorem.paragraph, status: 'published')
end

10.times do
  Checklist.create!(title: Faker::Company.industry, description: Faker::Lorem.paragraph, project_uid: Faker::Invoice.creditor_reference,form_id: Form.all.ids.sample)
end

10.times do
  Question.create!(title: Faker::Name.name, description: Faker::Lorem.paragraph, form_id: Form.all.ids.sample)
end

10.times do
  Answer.create!(comment: Faker::Lorem.sentence(5), significance: 2, checklist_id: Checklist.all.ids.sample, question_id: Question.all.ids.sample)
end
