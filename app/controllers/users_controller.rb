class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
  end

  def update
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
