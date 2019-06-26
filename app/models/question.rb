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

class Question < ApplicationRecord
  belongs_to :form
  has_many :answers, dependent: :destroy
  validates :title,  presence: true, length: { minimum: 4 }
end
