class AddStatusToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :status, :string
    add_column :lists, :description, :text
  end
end
