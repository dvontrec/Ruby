class PicsController < ApplicationController
  def index
  end
  
  # view
  def new
    @pic = Pic.new
  end

  # functionality
  def create
    @pic = Pic.new(pic_params)
  end


  private
    def pic_params
      params.require(:pic).permit(:title, :description)
    end
end
