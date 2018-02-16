class Admin::CategoriesController < Admin::BaseController


  def index
    @categories = Category.all
    @image = Image.all
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_categories_path
  end

  def edit
   @category = Category.find(params[:id])

  end

  def new
    @category = Category.new
    @image = Image.new
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
     redirect_to admin_categories_path
   else
     render :edit
   end
 end

  private

  def category_params
    params.require(:category).permit(:title)
  end

end
