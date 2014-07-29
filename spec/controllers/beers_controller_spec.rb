require 'rails_helper'

RSpec.describe BeersController, :type => :controller do
  describe '#show' do
    before do
      @brew = create(:beer, name: "In Heat Wheat")
    end
    it 'displays beer on show page' do
      get :show, id: @brew.id
      expect(response).to be_success
      expect(@brew.name).to eq "In Heat Wheat"
      expect(response).to render_template('show')
    end
  end
end
