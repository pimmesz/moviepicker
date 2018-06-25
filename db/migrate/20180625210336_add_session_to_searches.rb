class AddSessionToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :session_id, :string
  end
end
