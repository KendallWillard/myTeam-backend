class TeamsController < ApplicationController
  skip_before_action :authorized

  def index
    if params[:user_id]
      @teams = User.find(params[:user_id]).teams
    else
      @teams = Team.all
    end
    render json: @teams
  end

  def new
    @team = Team.new(team_params)
  end
  
  def create
    @team = Team.create(team_params)
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end

  private

  def team_params
    params.require(:team).permit(:name, :city, :description, :user_id, :id)
  end

end
