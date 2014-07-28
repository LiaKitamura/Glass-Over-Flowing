require 'rails_helper'

RSpec.describe StylesController, :type => :controller do

  describe '#show' do
    before do
      @style = create(:style, style_name: "Pale Ale")
    end
    it 'displays styles' do
      get :show, id: @style.id
      expect(response).to be_success
      expect(@style.style_name).to eq "Pale Ale"
      expect(response).to render_template('show')
    end
  end
end
