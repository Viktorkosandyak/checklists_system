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

require 'test_helper'

class ChecklistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
