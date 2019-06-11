require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'associations' do
    it { should belong_to(:checklist) }
  end

  # context 'validations title' do
  #   it { should validate_length_of(:title).is_at_least(4) }
  #   it { should validate_presence_of(:title) }
  # end

  it "is not valid without a checklist_id" do
    subject.checklist_id = ''
    expect(subject).to_not be_valid
  end

end
