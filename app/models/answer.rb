class Answer < ApplicationRecord
  belongs_to :checklist
  belongs_to :question
end
