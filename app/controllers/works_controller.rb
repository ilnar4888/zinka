class WorksController < ApplicationController
   expose :work
  
  def edit
  end

  def update
  end

  def show
  end

  def delete
  end
  
  def create
    work.save!
    if params[:images_files] != nil
      params[:images_files].each do |file|
        work.work_images.create!(file: file)
      end
    end
    redirect_to root_path  
  end

  private
    def work_params
      params.require(:work).permit(:title, :description, :price, images_files: [])
    end
end
