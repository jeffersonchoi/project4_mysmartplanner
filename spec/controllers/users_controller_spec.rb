require 'rails_helper'

describe UsersController do

  describe 'GET #index' do
        it "populates an array of users" do
          jonathan = User.create(first_name: "Jonathan", last_name: "Choi", email: "jonathanchoi@gmail.com", password: "12345678", password_confirmation: "12345678", dob: "1991-9-12", gender: "male")
          get :index
          expect(assigns(:users)).to eq([jonathan])
        end

        # it "renders the :index template" do
        #   get :index, letter: 'S'
        #   expect(response).to render_template :index
        # end

      # context 'without params[:letter]' do
      #   it "populates an array of all contacts" do
      #     smith = create(:contact, lastname: 'Smith')
      #     jones = create(:contact, lastname: 'Jones')
      #     get :index
      #     expect(assigns(:contacts)).to match_array([smith, jones])
      #   end
      #
      #   it "renders the :index template" do
      #     get :index
      #     expect(response).to render_template :index
      #   end
      # end
    end

end
