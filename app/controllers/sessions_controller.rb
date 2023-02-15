class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end
  def login
  end
  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/users'
    else
        redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  def page_requires_login
  end

end
