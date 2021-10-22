class CategoriesController < ApplicationController
  before_action :category_params, only: [:create]


  def new
    @category = Category.new
  end

  def index

  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end