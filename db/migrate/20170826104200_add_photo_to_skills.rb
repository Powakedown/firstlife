class AddPhotoToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :photo, :string
  end
end
