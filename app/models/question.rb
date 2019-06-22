class Question < ApplicationRecord
  belongs_to :form
  has_many :answers, dependent: :destroy
  validates :title,  presence: true, length: { minimum: 4 }
end
