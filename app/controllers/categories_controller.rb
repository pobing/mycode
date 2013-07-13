#encoding: utf-8
class CategoriesController < ApplicationController
  def show
    @category = Category.includes(:snippets).find(params[:id])
    @snippets = @category.snippets
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category}
    end
  end
end