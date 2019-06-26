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

require 'rails_helper'

RSpec.describe Form, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
