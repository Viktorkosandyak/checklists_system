# == Schema Information
#
# Table name: forms
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  status      :integer
#  date        :datetime
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :form do
    title { 'MyString' }
    description { 'MyText' }
    status { 1 }
    date { '2019-06-22 15:42:57' }
    user { nil }
  end
end
