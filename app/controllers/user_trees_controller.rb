class UserTreesController < ApplicationController
  before_action :set_tree

  def create
    if current_user.trees << @tree
      flash[:notice] = "Vous avez ajouté l'arbre de talent #{@tree.name} à votre profil."
      redirect_to tree_path(@tree)
    else
      render 'trees/show'
    end
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

end
