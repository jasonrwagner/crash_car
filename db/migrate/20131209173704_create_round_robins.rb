class CreateRoundRobins < ActiveRecord::Migration
  def change
    create_table :round_robins do |t|
      t.text :teams_in_play

      t.timestamps
    end
  end
end
