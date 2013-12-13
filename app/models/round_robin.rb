class RoundRobin < ActiveRecord::Base

  belongs_to :tournament
  has_many :teams, :through => :tournament
 #has_many :teams_in_play

  accepts_nested_attributes_for :tournament
  accepts_nested_attributes_for :teams

  serialize :teams_in_play


  def schedule(tournament_id)

   # @round_robin = RoundRobin.params[:id]
    #scheduled_teams.teams_in_play = params [:teams_in_play].to_a
    
    number_of_teams = Tournament.find(tournament_id).number_of_teams
    teams = Tournament.find(tournament_id), RoundRobin.find(id)
    puts "#{number_of_teams}number_of_teams"
    puts "#{teams}"
    row1 = (1..number_of_teams).map do |home_team|
        puts "#{home_team}home_team_slot"

    end

    row2 = (1..number_of_teams).map do |away_team|
        puts "#{away_team}away_team_slot"
    end 

    a = teams_in_play.permutation(2).to_a
      puts a.inspect
    
  end
  

  
end


