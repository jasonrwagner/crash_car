class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def new
  	@tournament = Tournament.new
  end

  def create
  	@tournament = Tournament.new(tournament_params)
    @tournament.created_by = current_user
    @tournament.user_email = User.find(current_user.id).email
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

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    @tournament.update(tournament_params)
  end


  def tournament_params
    params.require(:tournament).permit(:name, :number_of_teams, :id, :created_by, :user_email)
  end
end
