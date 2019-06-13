# == Schema Information
#
# Table name: questions
#
#  id          :bigint           not null, primary key
#  question    :text
#  description :text
#  answer      :string
#  comment     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ApplicationRecord
  belongs_to :checklist
  # validates :title,  presence: true, length: { minimum: 4 }

  enum answer: { none: 0, yes: 1, no: 2, na: 3  }, _suffix: true
end
