class Tree < ApplicationRecord
  has_attachment :photo
  has_many :skills
  has_many :users
  validates :name, presence: true

end
