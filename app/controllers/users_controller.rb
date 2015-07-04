class UsersController < ApplicationController

  def index
     @users = User.all
   end

   def show
     @user = User.find(params[:id])
   end

   def new
     @user = User.new
   end

   def create
     @user = User.new(user_params)
     if @user.save
       session[:user_id] = @user.id.to_s
       redirect_to users_path
     else
       render :new
     end
   end

   def edit
    @user = User.find(current_user)
   end

   def update
    @user = User.find(current_user)

    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render :edit
    end
   end

private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation, :date_of_birth)
   end

end
