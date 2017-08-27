class AddContributorsToTrees < ActiveRecord::Migration[5.1]
  def change
    add_column :trees, :contributors, :integer
  end
end
