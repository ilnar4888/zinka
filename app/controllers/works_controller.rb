class WorksController < ApplicationController
   expose :work

  def create
    Rails.logger.debug("My object: #{params["work"]["images_files"]}")
    work.save!
    if params[:images_files] != nil
      params[:images_files].each do |file|
        work.images.create!(file: file)
      end
    end
    redirect_to root_path  
  end

  private
    def work_params
      params.require(:work).permit(:title, :description, :price, :display, images_files: [])
    end
end
