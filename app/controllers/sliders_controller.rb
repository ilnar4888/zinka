class SlidersController < ApplicationController
  
  expose :slider
  expose :sliders, -> { Slider.all.order('created_at DESC')}
  
  def index
  end

  def create
  	slider.save!
  	respond_with :sliders
  end

  def destroy
  	slider.destroy
  	respond_with :sliders
  end

  private

    def slider_params
      params.require(:slider).permit(:slider_image)
    end
end
