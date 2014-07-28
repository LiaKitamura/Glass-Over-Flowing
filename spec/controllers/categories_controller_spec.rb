require 'rails_helper'

RSpec.describe CategoriesController, :type => :controller do
  describe '#index' do
    before do
      @categories = create(:category, name: "cheeze")
    end
    it 'displays a collection of categories' do
      get :index
      expect(response).to be_success
      expect(assigns(@category).name).to eq "cheeze"
      expect(response).to render_template('index')
    end

  end
end
