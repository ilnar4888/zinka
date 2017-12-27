class SlidersController < ApplicationController
  
  expose :slider
  expose :sliders, -> { Slider.all.order('created_at DESC')}
  
  def index
  end

  def create
  	slider.save!
  	redirect_to settings_path
  end

  def destroy
  	slider.destroy
  	redirect_to settings_path
  end

  private

    def slider_params
      params.require(:slider).permit(:slider_image)
    end
end
