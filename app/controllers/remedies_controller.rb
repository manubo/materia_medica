class RemediesController < ApplicationController
  def index
    @remedies = Remedy.all.order(:name, :acronym)
  end

  def show
    @remedy = find_remedy
  end

  def new
    @remedy = Remedy.new(entries: Category.order(:sorting).all.map { |c| Entry.new(category_id: c.id, description: nil) })
  end

  def create
    @remedy = Remedy.create(sanitized_remedy_params)
    if @remedy.errors.empty?
      redirect_to remedy_path(@remedy)
    else
      render :new
    end
  end

  def edit
    @remedy = find_remedy
  end

  def update
    @remedy = Remedy.find(params[:id])
    if @remedy.update(sanitized_remedy_params)
      redirect_to remedy_path(@remedy)
    else
      render :edit
    end
  end

  def destroy
    remedy = Remedy.find(params[:id])
    if remedy.destroy!
      redirect_to remedies_path
    end
  end

  private

  def find_remedy
    Remedy.includes(entries: :category).find(params[:id])
  end

  def sanitized_remedy_params
    remedy_params.tap do |attrs|
      if attrs[:acronym].blank?
        attrs[:acronym] = nil
      end
    end
  end

  def remedy_params
    params.require(:remedy).permit(:name, :acronym, entries_attributes: [:id, :category_id, :description])
  end
end
