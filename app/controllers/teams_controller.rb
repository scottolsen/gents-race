class TeamsController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
    5.times { @team.riders.build }
  end

  def edit
  end

  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        @team.update(rider_params)
        #TODO redirect to thank you or some shit
        format.html { redirect_to teams_url, notice: 'Team was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @team.update(team_params)
        @team.update(rider_params)
        format.html { redirect_to teams_url, notice: 'Team was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
    end
  end

  private
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(
        :name,
        :captain_email,
        :start_time
      ).merge(year: Date.today.year)
    end

    def rider_params
      params.require(:team).permit(
        :riders_attributes => [:id, :name, :level, :strava_id]
      )
    end
end
