class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query]
      @trees = Tree.where("name ILIKE ?", "%#{params[:query][:name]}%")
      @search = true
    else
      @trees = Tree.where.not("name = ? OR name = ?", "Écologie et progrès", "Nature et écologie")
      @users = User.all
    end
    @result = @trees.count
    @tree = Tree.first
  end

  def index


  end
end
