class TagsController < ApplicationController

  def index
  	@tags = Tag.all.sort_by! { |tag| tag.name }
    @tag_array = []
    @tags.each do |tag|
      @tag_array << tag.name
    end 
     @tags = @tag_array.uniq! 
  end

  def show
    @tag = Tag.find(params[:id])
    @tags = Tag.where(name: @tag.name)
  end

end
