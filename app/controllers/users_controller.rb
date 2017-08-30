class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all

    if params[:query]
      @tree_name = params[:query][:name]
      @address = params[:query][:address]
      set_trees
      @users = User.joins(user_trees: :tree)
                   .near(params[:query][:address], 100)
                   .where(trees: { id: @trees })
      @search = true
    else
      @trees = [Tree.first, Tree.last]
      @users = User.all
    end

    @result = 0
    @users.each do |user|
      @result += 1 if user.trees.where("name ILIKE ?", "%#{@tree_name}%").count > 0
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def set_trees
    if  @tree_name.present?
      @trees = Tree.where("name ILIKE ?", "%#{@tree_name}%")
    else
      @trees = Tree.all
    end
  end
end
