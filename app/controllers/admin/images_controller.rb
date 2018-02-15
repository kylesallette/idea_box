class Admin::ImagesController < Admin::BaseController


  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
   @image = Image.new
 end

 def create
   @image = Image.create(image_params)

 end

  private

  def image_params
    params.require(:image).permit(:name, :url)
  end


end
