class RemoveSearchqueryFromSearches < ActiveRecord::Migration[5.2]
  def change
    remove_column :searches, :searchquery
  end
end
