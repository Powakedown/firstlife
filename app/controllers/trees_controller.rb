class TreesController < ApplicationController

    skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def index
    if params[:query]
      @trees = Tree.where(name: params[:query][:name])
    else
      @trees = Tree.all
    end
    @result = @trees.count
  end

  def show
    @tree = Tree.find(params[:id])
    @root_skill = @tree.skills.first.root
  end

  def create
  end
end
