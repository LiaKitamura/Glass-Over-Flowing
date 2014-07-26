require 'rails_helper'

RSpec.describe BeersController, :type => :controller do

    describe '#show', :focus do
      before do
        @brew = create(:beers, :category_name, 'British Origin Ale', :style_description, 'Brown Porter')
        sign_in @user
      end
      it 'displays beer on show page' do
        get :show, id: @brew.id
        expect(response).to be_success
        expect(assigns(:beers).category_name).to eq 'Brown Porter'
        expect(response).to render_template('show')
      end
    end




end
