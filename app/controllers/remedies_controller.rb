class RemediesController < ApplicationController
  def index
    @remedies = Remedy.all.order(:name, :acronym)
  end

  def show
    @categories = Category.order(:sorting)
    @remedy = Remedy.includes(entries: :category).find(params[:id])
  end
end
