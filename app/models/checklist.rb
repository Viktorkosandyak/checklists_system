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

class Checklist < ApplicationRecord
  belongs_to :user
  belongs_to :form
  has_many :answers, dependent: :destroy
  validates_presence_of :title
  accepts_nested_attributes_for :answers, reject_if:
  :all_blank, allow_destroy: true
  scope :published, -> { where(status: 'published') }
end
