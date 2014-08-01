require 'rails_helper'

RSpec.describe BreweriesController, :type => :controller do
  describe '#show' do
    before do
      @brewery = create(:brewery, brewery_name: "Yo")
    end
    it 'displays a brewery on the page' do
      get :show, id: @brewery.id
      expect(response).to be_success
      expect(@brewery.brewery_name).to eq "Yo"
      expect(response).to render_template('show')
    end
  end
end
