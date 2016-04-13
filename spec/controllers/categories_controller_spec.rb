require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { create(:category) }

  describe '#index' do
    subject { get :index }

    it { is_expected.to render_template :index }
  end

  describe '#show' do
    subject { get :show, id: category.id }

    it { is_expected.to render_template :show }
  end
end
