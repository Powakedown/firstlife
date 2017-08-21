class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :title
      t.references :tree, foreign_key: true
      t.boolean :level

      t.timestamps
    end
  end
end
