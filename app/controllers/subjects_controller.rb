class SubjectsController < ApplicationController
  def random
    @category = Category.find(params[:category][:id])
    @subject = @category.subjects.order('random()').first

    render 'categories/index'
  end
end
