class IdeasController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @idea = @user.ideas.new
    @image = Image.all
    redirect_to root_path unless @user == current_user
  end

  def create
    @user = User.find(params[:user_id])
    @idea = @user.ideas.create(idea_params)
    @idea.image_ids = params[:image_url]
    redirect_to user_ideas_path(@user)
  end

  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
    @image = Image.all
    redirect_to root_path unless @user == current_user
  end

  def edit
    @user = User.find(params[:user_id])
    @idea = Idea.find(params[:id])
    @categories = Category.all
    @images = Image.all
  end

  def show
   @user = User.find(params[:user_id])
   @idea = Idea.find(params[:id])

   redirect_to root_path unless @user == current_user
  end

  def destroy
    Idea.destroy(params[:id])
    redirect_to user_ideas_path(params[:user_id])
  end

  def update
    @idea = Idea.find(params[:id])
    @category = Category.all
    @user = User.find(params[:user_id])
    @idea.image_ids = params[:image_url]
    @idea.update(idea_params)
    redirect_to user_idea_path(@user, @idea)
  end

  private

  def idea_params
    params.require(:idea).permit(:content, :name, :image, :category_id, {:image_ids => []})
  end


end
