class AddCategoryToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :category, :string
  end
end
