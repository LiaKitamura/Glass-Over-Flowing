require 'rails_helper'

RSpec.describe Beer, :type => :model do

  describe 'associations' do
    it { should belong_to :brewery }
    it { should belong_to :styles }
    it { should have_many :favorites }
  end

  describe "validations", :focus do
    it { should validate_presence_of :name }
  end

end
