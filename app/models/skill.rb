class Skill < ApplicationRecord
  belongs_to :tree
  has_ancestry
end
