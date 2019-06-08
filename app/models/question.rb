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
end
