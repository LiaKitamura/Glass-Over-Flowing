require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  # before(:each) do
  #   @user = create(:user, name: 'Chet', email: 'blah@blah.com', password: 'password')
  #   sign_in @user
  #   controller.current_user.should == @user
  # end
  #
  # describe "#show" do
  #   before do
  #     @user = create(:user, name: 'Chet', email: 'blah@blah.com', password: 'password')
  #   end
  #   it "if user signed in directs to user show page" do
  #     get :show, id: @user.id
  #     expect(response).to be_success
  #     expect(assigns(:user).name).to eq 'Chet'
  #     expect(response).to render_template('show')
  #   end
  # end

end
