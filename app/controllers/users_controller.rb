class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]

  def login
    @error = flash[:error]
  end

  def handle_login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      # If the User is found AND their password matches
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Incorrect username or password"
      redirect_to login_path
    end
  end
  

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # if @user === @current_user
    #   render :show
    # else 
    #   flash[:error] = "can only see your profile"
    #   redirect_to users_path
    # end 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      # if @user.valid? do
        session[:user_id]= @user_id
        redirect_to @user
         
      # else
      #   flash[:errors] = @user.errors.full_messages
      #   redirect_to new_user_path
      # end
    end
   
  def edit
    @user = @current_user
  end
    
  def destroy
    @user.destroy
    redirect_to login_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
    
  def get_user
    @user = User.find(params[:id])
  end
end