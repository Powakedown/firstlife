class Skill < ApplicationRecord
  belongs_to :tree
  has_ancestry

  def level?
    level
  end
end
