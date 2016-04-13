require 'rails_helper'

RSpec.describe SubcategoriesController, type: :controller do
  let(:category) { create(:category) }
  let(:subcategory) { category.subcategories.create!(name: 'Nature') }

  describe '#show' do
    subject { get :show, category_id: category.id, id: subcategory.id }

    it { is_expected.to render_template :show }
  end
end