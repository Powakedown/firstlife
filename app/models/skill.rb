class Skill < ApplicationRecord
  belongs_to :tree
  has_ancestry
  has_attachment :photo


  def level?
    level
  end
end
