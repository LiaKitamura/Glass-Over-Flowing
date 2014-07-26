require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe '#show' do
    before do
      @user = create(:user, name: 'Shit Head', email: 'test@test.com', password: 'Password1')
      sign_in @user
    end
    it 'displays a single user' do
      get :show, id: @user.id
      expect(response).to be_success
      expect(assigns(:user).name).to eq 'Shit Head'
      expect(response).to render_template('show')
    end
  end

  describe '#update' do
    before do
      @user = create(:user, name: 'not updated', email: "test@test.com", password: "password1")
      sign_in @user
    end
    context 'when the update was successful' do
      it 'updates user successful' do
        put :update, id: @user.id, user: {name: "updated", email: "test@test.com", password: "password1"}
        expect(@user.reload.name).to eq "not updated"
        expect(response).to be_redirect
        expect(response).to redirect_to user_path
      end
    end
    context 'when the update failed' do
      it 'fails to update' do
        put :update, id: @user.id, user: {name: nil}
        expect(@user.reload.name).to_not be_nil
        expect(response).to redirect_to user_path
      end
    end
  end

  describe '#destroy', :focus do
    before do
      @user = create(:user, name: 'not updated', email: "test@test.com", password: "password1")
      sign_in @user
    end
    it 'deletes user from system' do
      expect {
        delete :destroy, id: @user.id
      }.to change(User, :count).from(1).to(0)
        expect(response).to be_redirect
        expect(response).to redirect_to user_path
    end
  end
end
