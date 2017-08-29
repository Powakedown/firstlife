class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @trees = Tree.where.not("name = ? OR name = ?", "Écologie et progrès", "Nature et écologie")
    @users = User.all
  end
end
