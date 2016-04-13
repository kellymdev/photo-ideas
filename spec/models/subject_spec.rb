require 'rails_helper'

RSpec.describe Subject, type: :model do
  context 'associations' do
    subject(:subject) { create(:subject) }

    it { should belong_to :subcategory }
  end

  context 'validations' do
    context 'with a valid subject' do
      subject(:subject) { create(:subject, name: 'EF') }

      it { is_expected.to be_valid }
    end

    context 'when the subject has no name' do
      subject(:subject) { build(:subject, name: '') }

      it { is_expected.to_not be_valid }
    end

    context 'when the subject has a single character name' do
      subject(:subject) { build(:subject, name: 'E') }

      it { is_expected.to_not be_valid }
    end
  end
end
