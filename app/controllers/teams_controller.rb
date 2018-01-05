class TeamsController < ApplicationController
  expose :team

  def create
    Team.destroy_all
    team.save!
    redirect_to root_path  
  end

  def show
  end

  def edit 
  end

  def our_team
    @team = Team.last
  end

  def update
    if team.update_attributes(team_params)
      redirect_to team_path(team), success: "Вы обновили информацию о вашей команде!"
    else
      redirect_to team_path(team), success: "Произошла ошибка, возможно вы ввели неверные данные."
    end
  end

  private
    def team_params
      params.require(:team).permit(:title, :description, :team_image)
    end
end