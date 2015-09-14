class RemoveNameFromSession < ActiveRecord::Migration
  def change
    remove_column :sessions, :name
  end
end
