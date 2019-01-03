class AddColorToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :color, :string
  end
end
