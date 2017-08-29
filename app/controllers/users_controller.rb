class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all

    if params[:query]
      @query = params[:query][:name]
      @address = params[:query][:address]
      @trees = Tree.where("name ILIKE ?", "%#{@query}%")
      @users = User.near(params[:query][:address], 100)
      @search = true
    else
      @trees = []
      @trees << Tree.first
      @trees << Tree.last

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
