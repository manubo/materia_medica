class RemediesController < ApplicationController
  def index
    @remedies = Remedy.all.order(:name, :acronym)
  end

  def show
    @remedy = find_remedy
  end

  def edit
    @remedy = find_remedy
  end

  def update
    remedy = Remedy.find(params[:id])
    if remedy.update(remedy_params)
      redirect_to remedy_path(remedy)
    else
      render :edit
    end
  end

  private

  def find_remedy
    Remedy.includes(entries: :category).order("categories.sorting").find(params[:id])
  end

  def remedy_params
    params.require(:remedy).permit(:name, :acronym, entries_attributes: [:id, :category_id, :description])
  end
end
