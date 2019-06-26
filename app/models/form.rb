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

class Form < ApplicationRecord
  belongs_to :user, optional: true
  has_many :checklists, dependent: :destroy
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if:
  :all_blank, allow_destroy: true
  enum status: { draft: 0, published: 1 }
end
