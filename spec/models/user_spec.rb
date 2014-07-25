require 'rails_helper'

RSpec.describe User, :type => :model do

  describe "associations" do
    it { should have_many :favorites }
  end

  describe "validations" do
    it { should validate_presence_of :name }
  end

  # describe "#favorited_beers" do
  #   before do
  #     @favorite = User.favorited_beers(user_id: 1)
  #   end
  #   it "takes users id and adds to favorites user_id, and stores it" do
  #     expect(favorited_beers.user_id).to eql 1
  #   end
  # end

end
