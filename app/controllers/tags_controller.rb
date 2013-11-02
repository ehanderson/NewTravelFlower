class TagsController < ApplicationController

  def index

  end

  def show
    @tag = Tag.find(params[:id])
    @tags = Tag.where(name: @tag.name)
  end

end
