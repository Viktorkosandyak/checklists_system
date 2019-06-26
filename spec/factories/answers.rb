# == Schema Information
#
# Table name: answers
#
#  id           :bigint           not null, primary key
#  comment      :text
#  significance :integer
#  question_id  :bigint
#  checklist_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :answer do
    comment { 'MyText' }
    significance { 1 }
    question { nil }
    checklist { nil }
  end
end
