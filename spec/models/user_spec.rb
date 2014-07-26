require 'rails_helper'

RSpec.describe User, :type => :model do

  describe "associations" do
    it { should have_many :favorites }
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
  end

  describe '#name' do
    before do
      @user = create(:user, name: 'Justin', email: 'test@test.com', password: 'password1')
    end
    it 'takes user and returns Justin' do
      expect(@user.name).to eq 'Justin'
    end
  end

  describe '#email' do
    before do
      @user = create(:user, email: 'test@test.com')
    end
    it 'returns email test@test.com' do
      expect(@user.email).to eq 'test@test.com'
    end
  end


end
