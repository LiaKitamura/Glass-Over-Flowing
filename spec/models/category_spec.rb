require 'rails_helper'

RSpec.describe Category, :type => :model do

  describe "association" do
    it { should have_many :styles }
  end


end
