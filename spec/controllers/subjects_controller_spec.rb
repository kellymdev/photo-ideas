require 'rails_helper'

RSpec.describe SubjectsController, type: :controller do
  let!(:category) { create(:category) }

  describe '#random' do
    subject { get :random, params: { category: { id: category.id } } }

    it { is_expected.to render_template :index }
  end
end
