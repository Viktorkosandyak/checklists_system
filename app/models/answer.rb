class Answer < ApplicationRecord
  belongs_to :checklist
  belongs_to :question
  validates :comment,  presence: true, length: { minimum: 12 },
  unless: Proc.new { |a| a.significance == 'nothing' }
  enum significance: { nothing: 0, yes: 1, no: 2, na: 3  }
end
