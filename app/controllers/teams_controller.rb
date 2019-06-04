class TeamsController < ApplicationController
  
  def index
    if params[:user_id]
      @teams = User.find(params[:user_id]).teams
    else
      @teams = Team.all
    end
    render json: @teams
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

end
