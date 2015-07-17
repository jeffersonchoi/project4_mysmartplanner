require 'rails_helper'

describe UsersController do

  describe 'GET #index' do
    it "populates an array of users" do
      jonathan = User.create(first_name: "Jonathan", last_name: "Choi", email: "jonathanchoi@gmail.com", password: "12345678", password_confirmation: "12345678", dob: "1991-9-12", gender: "male")
      get :index
      expect(assigns(:users)).to eq([jonathan])
    end
  end

  describe 'GET #show' do
   it "shows the user list" do
     jonathan = User.create(first_name: "Jonathan", last_name: "Choi", email: "jonathanchoi@gmail.com", password: "12345678", password_confirmation: "12345678", dob: "1991-9-12", gender: "male")
     get :show, id: jonathan.id
     assert_response :success
   end
  end

  describe 'GET #new' do
   it "assigns a new user to USER" do
     get :new
     expect(assigns(:user)).to be_a_new(User)
   end

   it "renders the :new template" do
     get :new
     expect(response).to render_template :new
   end
 end

 describe 'GET #edit' do

   it "should update article" do
    #   jonathan = User.create(first_name: "Jonathan", last_name: "Choi", email: "jonathanchoi@gmail.com", password: "12345678", password_confirmation: "12345678", dob: "1991-9-12", gender: "male")
    #  jonathan = User.update(first_name: "Jefferson", last_name: "Choi", email: "jonathanchoi@gmail.com", password: "12345678", password_confirmation: "12345678", dob: "1991-9-12", gender: "male")
    #  patch :update, id: jonathan.id
    #  assert_redirected_to user_path(assigns(:user))
   end
    it "assigns the requested user to @user" do
      #  user = User.create(:user)
      #  get :edit, id: user.id
      #  expect(assigns(:user)).to eq user.id
    end

    it "renders the :edit template" do
      #  user = User.create(:user)
      #  get :edit, id: user.id
      #  expect(response).to render_template :edit
    end
  end



end
