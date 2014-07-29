require 'rails_helper'

RSpec.describe Beer, :type => :model do

  describe "associations" do
    it { should belong_to :brewery }
    it { should belong_to :style }
    it { should have_many :favorites }
  end

end
