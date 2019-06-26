# == Schema Information
#
# Table name: checklists
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  project_uid :string
#  date        :datetime
#  form_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#

FactoryBot.define do
  factory :checklist do
    title { 'MyString' }
    description { 'MyText' }
    project_uid { 'MyString' }
    date { '2019-06-22 15:44:18' }
    form { nil }
  end
end
