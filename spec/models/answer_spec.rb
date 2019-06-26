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

require 'rails_helper'

RSpec.describe Answer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
