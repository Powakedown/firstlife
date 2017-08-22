class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
  end

  def create
  end
end
