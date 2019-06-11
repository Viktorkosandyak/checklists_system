require 'rails_helper'

RSpec.describe Checklist , type: :model do

  before do
    @checklist =  build(:checklist)
  end

  subject { @checklist }

  context 'associations' do
    it { should have_many(:questions) }
  end

  # context 'validations' do
  #   it { should validate_presence_of(:title) }
  # end
  #
  # it "is not valid without a title" do
  #   subject.title = ''
  #   expect(subject).to_not be_valid
  # end

end
