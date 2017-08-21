class CreateUserTrees < ActiveRecord::Migration[5.1]
  def change
    create_table :user_trees do |t|
      t.references :user, foreign_key: true
      t.references :tree, foreign_key: true

      t.timestamps
    end
  end
end
