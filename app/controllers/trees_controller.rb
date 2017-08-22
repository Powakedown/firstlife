class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
    @root_skill = @tree.skills.first.root
  end

  def create
  end
end
