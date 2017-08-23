class TreesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query]
      @trees = Tree.where("name ILIKE ?", "%#{params[:query][:name]}%")
      @search = true
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
