class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_skills, dependent: :destroy
  has_many :user_trees, dependent: :destroy
  has_many :trees, through: :user_trees
  has_many :skills, through: :user_skills
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  validates :address, presence: true

  def has_tree_and_skill(tree, skill)
    has_tree(tree) && has_skill(skill)
  end

  private

  def has_tree(tree)
    trees.exists?(tree.id)
  end

  def has_skill(skill)
    skills.exists?(skill.id)
  end
end
