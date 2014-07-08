require 'rails_helper'

RSpec.describe Beer, :type => :model do

  describe 'associations', :focus do
    it { should have_many :favorites }
  end

  describe 'validations' do
    it { validate_presence_of :category }
    it { validate_presence_of :style }
    it { validate_presence_of :name }
    it { validate_presence_of :brewed_by }
    it { validate_presence_of :ABV }
  end


end
