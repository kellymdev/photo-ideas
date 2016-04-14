class SubjectsController < ApplicationController
  def random
    @category = Category.find(params[:category_id])
    @subject = @category.subjects.order('random()').first
  end
end
