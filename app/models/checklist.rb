# == Schema Information
#
# Table name: checklists
#
#  id             :bigint           not null, primary key
#  title          :string
#  description    :text
#  questiom_count :integer
#  status         :string
#  date           :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  project        :string
#

class Checklist < ApplicationRecord
  belongs_to :form
  has_many :answers
  validates_presence_of :title
  accepts_nested_attributes_for :answers
  scope :published, -> { where(status: 'published') }
end
