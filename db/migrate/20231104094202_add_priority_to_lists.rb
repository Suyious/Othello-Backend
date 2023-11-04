class AddPriorityToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :priority, :integer
  end
end
