class UsersController < ApplicationController
  expose(:name)                          {params[:name]}
  expose(:email)                         {params[:email]}
  expose(:password)                      {params[:password]}
  expose(:password_confirmation)         {params[:password_confirmation]}


  def new
    user = User.create(name: name, email: email, password: password, password_confirmation: password_confirmation)
    user
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to '/signup'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
