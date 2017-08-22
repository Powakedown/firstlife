class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
    @skills = Skill.where(tree_id: @tree.id)
  end

  def create
  end
end
