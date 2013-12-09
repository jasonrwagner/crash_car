class Tournament < ActiveRecord::Base
  belongs_to :user

  has_many :teams
  
  accepts_nested_attributes_for :teams

  has_many :round_robins



  def number_of_teams_in_play
  	@number_of_teams_in_play = Tournament.last.number_of_teams
  end

end
