class UsersController < ApplicationController

  def index
    # return all the users
     @users = User.all
   end

   def show
     # show the individual user
     @user = User.find(params[:id])
   end

   def new
     # new user
     @user = User.new
   end

   def create
     #create a new user
     @user = User.new(user_params)
     if @user.save
       #create and store user id as session user_id
       session[:user_id] = @user.id.to_s
       #do a flash message to tell others
       flash[:success] = "Account successfully created."
       #redirect to attraction lists
       redirect_to nodes_path
     else
       #render the new form again
       render :new
     end
   end


   def edit
    #find a specific user
    @user = User.find(current_user)
   end

   def update
    @user = User.find(current_user)

    if @user.update_attributes(user_params)
      flash[:success] = "Account successfully updated."
      redirect_to nodes_path
    else
      render :edit
    end
   end

private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation, :dob)
   end

end
