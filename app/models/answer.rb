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

class Answer < ApplicationRecord
  belongs_to :checklist
  belongs_to :question
  validates :comment, presence: true, length: { minimum: 12 },
                      unless: proc { |a| a.significance == 'nothing' }
  enum significance: { nothing: 0, yes: 1, no: 2, na: 3 }
end
