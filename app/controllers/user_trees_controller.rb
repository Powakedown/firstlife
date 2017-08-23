class UserTreesController < ApplicationController
  before_action :set_tree

  def create
    if current_user.trees << @tree
      redirect_to user_path(current_user)
    else
      render 'trees/show'
    end
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

end
