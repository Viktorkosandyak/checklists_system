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

  it "applies a default scope to collections by departure ascending" do
    expect(Checklist.all.by_parent).to eq Checklist.all.where(parent: true)
  end


end
