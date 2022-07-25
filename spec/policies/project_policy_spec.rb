require 'rails_helper'

RSpec.describe 'ProjectPolicy', type: :policy do
  subject(:policy) { ProjectPolicy.new(user, project) }

  let(:project) { Project.new }

  describe '#index?' do
    subject { policy.index? }

    let(:project) { Project }

    context 'when user is not present' do
      let(:user) { nil }

      it { is_expected.to be_truthy }
    end

    context 'when user is present' do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end
  end

  describe '#show?' do
    subject { policy.show? }

    context 'when user is not present' do
      let(:user) { nil }

      it { is_expected.to be_falsey }
    end

    context 'when user is present' do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end
  end

  describe '#create?' do
    subject { policy.create? }

    context 'when user is not present' do
      let(:user) { nil }

      it { is_expected.to be_falsey }
    end

    context 'when user is present' do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end
  end

  describe '#update?' do
    subject { policy.update? }

    let(:user) { create :user }

    context 'when user is not creator of the project' do
      it { is_expected.to be_falsey }
    end

    context 'when user is creator of the project' do
      let(:project) { Project.new(user: user) }

      it { is_expected.to be_truthy }
    end
  end
end
