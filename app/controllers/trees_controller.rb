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
    @tree_user = UserTree.where("user_id = ? AND tree_id = ?", current_user, @tree).count >= 1
    if params[:query]
      @users = @tree.users.where( address: user_query_params[:address])
    end
  end

  def create

  end

  def user_query_params
    params.require(:query).permit(:address)
  end
end
