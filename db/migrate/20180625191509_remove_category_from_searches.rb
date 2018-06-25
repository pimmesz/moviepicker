class RemoveCategoryFromSearches < ActiveRecord::Migration[5.2]
  def change
    remove_column :searches, :category
  end
end
