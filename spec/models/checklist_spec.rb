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

require 'rails_helper'

RSpec.describe Checklist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
