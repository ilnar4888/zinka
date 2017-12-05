class MapsController < ApplicationController
  
  expose :map
  
  def create
    Map.destroy_all
    map.save!
    redirect_to root_path  
  end

  private
    def map_params
      params.require(:map).permit(:address_name, :address)
    end
end
