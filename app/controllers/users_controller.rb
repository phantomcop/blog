class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]

  def index
    
  end
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to articles_path, notice: 'User successfully adder.'
    else 
      render action: 'new'
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to articles_path, notice: 'Update user infomation successfully.'
    else
      render action: 'edit'
    end
  end

  private 
  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = 'Errors.'
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
