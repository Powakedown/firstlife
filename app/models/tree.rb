class Tree < ApplicationRecord
  has_attachment :photo
  has_many :skills, dependent: :destroy
  has_many :user_trees, dependent: :destroy
  has_many :users, through: :user_trees
  belongs_to :category
  validates :name, presence: true
  validates_uniqueness_of :name


  def self.search(search)
    where("name ILIKE ?", "%#{params[:query][:name]}%")
  end

end
