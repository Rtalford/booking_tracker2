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

  def edit
  end

  def update
    @user = user.find(params[:id])
    if @user.update(params)
      redirect_to user_path
    else
      render :edit
    end 
  end

  def delete
  end

  def show
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email)
  end 

end
end
