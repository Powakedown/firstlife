class UserTreesController < ApplicationController
  before_action :set_tree

  def create
    if current_user.trees << @tree
      redirect_to tree_path(@tree)
      render 'shared/flashes'
    else
      render 'trees/show'
    end
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

end
