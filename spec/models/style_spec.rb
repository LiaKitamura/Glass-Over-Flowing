require 'rails_helper'

RSpec.describe Style, :type => :model do

  describe "associations" do
    it { should belong_to :category }
    it { should have_many :beers }
  end

end
