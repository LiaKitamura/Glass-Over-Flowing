require 'rails_helper'

RSpec.describe BeersController, :type => :controller do

    describe '#show', :focus do
      before do
        @brew = create(:beer, category: 'South German-Style Hefeweizen / Hefeweissbier', style: 'A Slice of Hefen')
      end
      it 'displays beer on show page' do
        get :show, id: @brew.id
        expect(response).to be_success
        expect(assigns(:beer).category).to eq 'South German-Style Hefeweizen / Hefeweissbier'
        expect(response).to render_template('show')
      end
    end
end
