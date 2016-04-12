require 'rails_helper'

RSpec.describe Subcategory, type: :model do
  context 'associations' do
    subject(:subcategory) { create(:subcategory) }

    it { should belong_to :category }
  end

  context 'validations' do
    context 'with a valid subcategory' do
      subject(:subcategory) { create(:subcategory, name: 'CD') }

      it { is_expected.to be_valid }
    end

    context 'when the subcategory has no name' do
      subject(:subcategory) { build(:subcategory, name: '') }

      it { is_expected.to_not be_valid }
    end

    context 'when the subcategory has a single character name' do
      subject(:subcategory) { build(:subcategory, name: 'C') }

      it { is_expected.to_not be_valid }
    end
  end
end
