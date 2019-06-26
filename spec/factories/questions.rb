# == Schema Information
#
# Table name: questions
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  form_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :question do
    title { 'MyString' }
    description { 'MyText' }
    form { nil }
  end
end
