class Tree < ApplicationRecord
  has_attachment :photo
  has_many :skills
  has_many :users
  belongs_to :category
  validates :name, presence: true
  validates_uniqueness_of :name
end
