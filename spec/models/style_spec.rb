require 'rails_helper'

RSpec.describe Style, :type => :model do

  describe "associations" do
    it { should belong_to :category }
    it { should have_many :beers }
  end

  describe "validations" do
    it { should validate_presence_of :style_name }
  end

end
