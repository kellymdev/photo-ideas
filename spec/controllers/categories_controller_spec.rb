require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { create(:category) }

  describe '#index' do
    subject { get :index }

    it { is_expected.to render_template :index }
  end
end
