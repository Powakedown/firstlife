class UserTree < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  validates :tree, uniqueness: { scope: :user }
end
