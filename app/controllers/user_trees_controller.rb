class UserTreesController < ApplicationController
  before_action :set_tree

  def create
    raise
    @user_trees.tree = @tree
    if user_trees.save
      redirect_to user_path(@tree)
    else
      render 'trees/show'
    end
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

end
