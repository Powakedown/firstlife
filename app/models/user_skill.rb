class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :user, uniqueness: { scope: :skill}
end
