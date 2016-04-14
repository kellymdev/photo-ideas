require 'rails_helper'

RSpec.describe SubjectsController, type: :controller do
  let!(:category) { create(:category) }

  describe '#random' do
    subject { get :random, category_id: category.id }

    it { is_expected.to render_template :random }
  end
end
