class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :number_of_teams

      t.timestamps
    end
  end
end
