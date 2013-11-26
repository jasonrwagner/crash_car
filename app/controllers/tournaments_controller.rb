class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def new
  	@tournament = Tournament.new
  end

  def create
  	@tournament = Tournament.new(tournament_params)
	    if @tournament.save
  	    flash[:success] = "Made a new tournament"
  	    redirect_to @tournament
	    else
  	    render :new
	    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end


  def tournament_params
    params.require(:tournament).permit(:name, :number_of_teams, :id)
  end
end
