class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
    @skills = @tree.skills
  end

  def create
  end
end
