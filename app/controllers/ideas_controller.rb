class IdeasController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @idea = @user.ideas.new
  end

  def create
    @user = User.find(params[:user_id])
    @idea = @user.ideas.new(idea_params)

      redirect_to user_ideas_path(@user)

    end


  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
  end

  def edit
    @user = User.find(params[:user_id])

  end

 def show
   @idea = @user.ideas.find(params[:id])
 end

 def destroy
  @idea.destroy(params[:id])
  redirect_to user_ideas_path(params[:user_id])
 end


  private

  def idea_params
    params.require(:idea).permit(:content, :name)
  end

end
