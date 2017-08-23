class AddTitleToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :action, :string
  end
end
