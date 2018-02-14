class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    require 'pry'; binding.pry
    @image = Image.find(params[:id])

  end

end
