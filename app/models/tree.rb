class Tree < ApplicationRecord
  has_attachment :photo
  has_many :skills
  has_many :user_trees
  has_many :users, through: :user_trees
  belongs_to :category
  validates :name, presence: true
  validates_uniqueness_of :name

end
