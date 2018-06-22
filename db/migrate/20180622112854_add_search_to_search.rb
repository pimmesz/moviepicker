class AddSearchToSearch < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :searchquery, :string
  end
end
