class AddColorToTrees < ActiveRecord::Migration[5.1]
  def change
    add_column :trees, :color, :string
  end
end
