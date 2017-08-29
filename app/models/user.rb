class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_skills
  has_many :user_trees
  has_many :trees, through: :user_trees
  has_many :skills, through: :user_skills
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  validates :address, presence: true
end
