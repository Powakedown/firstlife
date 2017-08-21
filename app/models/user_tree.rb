class UserTree < ApplicationRecord
  belongs_to :user
  belongs_to :tree
end
