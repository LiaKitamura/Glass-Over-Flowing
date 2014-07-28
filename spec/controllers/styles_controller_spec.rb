require 'rails_helper'

RSpec.describe StylesController, :type => :controller do

  describe '#show', :focus do
    before do
      @style = create(:style, name: "Hipster")
    end
    it 'displays styles' do
      get :show, id: @style.id
      expect(response).to be_success
      expect(@sytle.name).to eq "Hipster"
      expect(response).to render_template('show')
    end
  end
end
