class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else 
      render :new
    end 
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = user.find(params[:id])
    if @user.update(params)
      redirect_to user_path
    else
      render :edit
    end 
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.delete 
    redirect_to user_path
  end

  
  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end 

end

