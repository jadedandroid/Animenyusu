class UsersController < ApplicationController


  def login
    @error = flash[:error]
  end

  def handle_login
    @user = User.find_by(Username: params[:Username])
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
        @user = User.all

    end
    def new
    @user = User.new

    end

    def create
        @user = User.create(user_params)
        if @user valid?
            session[:user_id]= @user_id
            redirect_to user_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path

    end
    def update

    end
    def edit
        @user = @current_user

    end
    def destroy
        @user.destroy
        redirect_to login_path

    end
    private
    def student_params
        params.require(:user).permit(:username, :password)
    end
    def find_user
        @user = User.find(params[:id])
end
