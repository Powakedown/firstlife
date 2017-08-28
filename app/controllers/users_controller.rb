class UsersController < ApplicationController

  def index
    @users = User.all

    if params[:query]
      @query = params[:query][:name]
      @address = params[:query][:address]
      @trees = Tree.where("name ILIKE ?", "%#{@query}%")
      @users = User.where("address ILIKE ?", "%#{params[:query][:address]}%")
      @search = true
    else
      @trees = Tree.all
      @users = User.all
    end

    @result = 0
    @users.each do |user|
      @result += 1 if user.trees.where("name ILIKE ?", "%#{@query}%").count > 0
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
