class AddPickedmoviesToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :pickedmovies, :string
  end
end
