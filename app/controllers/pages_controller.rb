class PagesController < ApplicationController
  
  expose :sliders, -> { Slider.all.order('created_at DESC')}
  
  def home
  end
end
