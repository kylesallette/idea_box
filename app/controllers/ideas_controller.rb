class IdeasController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @idea = Idea.new()
  end

  def create
    @user = User.find(params[:user_id])
    @idea = @user.ideas.new(idea_params)
    if @idea.save
      flash[:success] = "#{@idea.name} added !"
      redirect_to user_idea_path(@idea, @user)
    else
      render :new
    end
  end

  def index
    @user = User.find(params[:user_id])
    @ideas = Idea.all
 end

 def show
   @user = User.find(params[:id])
   @idea = Idea.find(params[:user_id])
 end

  private

  def idea_params
    params.require(:idea).permit(:content, :name)
  end

end
