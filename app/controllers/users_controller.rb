class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "You signed up successfully"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def login
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      flash[:success] = "Welcome Back"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Either Email and/or Password incorrect"
      redirect_to new_user_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

    def show
    @user = User.find_by_id(params[:id])  
    @users = User.all 
   end
end
