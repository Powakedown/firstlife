class AddPhotoToTree < ActiveRecord::Migration[5.1]
  def change
    add_column :trees, :photo, :string
  end
end
