class AddColumnToTree < ActiveRecord::Migration[5.1]
  def change
    add_reference :trees, :category, foreign_key: true
  end
end
