require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'associations' do
    subject(:category) { create(:category) }

    it { should have_many :subcategories }

    it { should have_many(:subjects).through(:subcategories) }
  end

  context 'validations' do
    context 'with a valid category' do
      subject(:category) { create(:category, name: 'AB') }

      it { is_expected.to be_valid }
    end

    context 'when the category has no name' do
      subject(:category) { build(:category, name: '') }

      it { is_expected.to_not be_valid }
    end

    context 'when the category has a single character name' do
      subject(:category) { build(:category, name: 'A') }

      it { is_expected.to_not be_valid }
    end
  end
end
