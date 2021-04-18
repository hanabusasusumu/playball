class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :show]
  before_action :search_team, only: [:index, :search]
  def index
    @teams = Team.all.order('created_at DESC')
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else   
      render :new
    end  
  end

  def show
    @team = Team.find(params[:id])
    @comment = Comment.new
    @comments = @team.comments.includes(:user)
  end

  def edit
    @team = Team.find(params[:id])
    unless @team.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team.id)
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to root_path
  end

  def search
    @results = @t.results
  end

  private
  
  def team_params
    params.require(:team).permit(:name, :city_id, :message, :representative, :email, :image).merge(user_id: current_user.id)
  end

  def search_team
    @t = Team.ransack(params[:q])
  end
end
