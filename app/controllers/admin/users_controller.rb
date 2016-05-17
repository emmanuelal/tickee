class Admin::UsersController < Admin::ApplicationController
     # before_filter :initialize_user

  #def initialize_user
       #@user = User.new
  #end


  def index
      @user = User.order(:email)
  end

  def new
  	  @user = User.new
  end	

  def create
      @user = User.new(user_params)
      if @user.save
         flash[:notice] = "User has been created."
         redirect_to admin_users_path
      else
         flash.now[:alert] = "User has not been created."
         render "new"
      end
  end

private
  
  def user_params
       params.require(:user).permit(:email, :password, :admin)
   end
end
