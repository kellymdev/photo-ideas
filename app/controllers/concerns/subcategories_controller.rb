class SubcategoriesController < ApplicationController
  def show
    @subcategory = Subcategory.find(params[:id])
    @subjects = @subcategory.subjects
  end
end