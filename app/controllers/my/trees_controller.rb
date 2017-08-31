class My::TreesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]

  def show
    @tree = Tree.find(params[:id])
    @root_skill = @tree.skills.first.root

    @user = user_signed_in? ? current_user : User.new

    @user_has_tree = UserTree.where("user_id = ? AND tree_id = ?", @user, @tree).count >= 1
    if params[:query]
      @users = @tree.users.where( address: user_query_params[:address])
    end
  end
end
