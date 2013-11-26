class AddCreatedByToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :created_by, :string
  end
end
