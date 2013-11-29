class AddUserEmailToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :user_email, :string
  end
end
