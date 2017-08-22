class AddAncestryToSkill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :ancestry, :string
  end
end
