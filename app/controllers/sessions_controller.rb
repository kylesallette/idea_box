class SessionsController < ApplicationController


  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "successfully logged out"
  end

end
