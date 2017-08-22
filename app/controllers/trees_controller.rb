class TreesController < ApplicationController

    skip_before_action :authenticate_user!, only: [:home, :index, :show]
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
