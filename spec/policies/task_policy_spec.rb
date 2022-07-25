require 'rails_helper'

RSpec.describe 'TaskPolicy', type: :policy do
  subject(:policy) { TaskPolicy.new(user, task) }

  describe '#index?' do
    subject { policy.index? }

    let(:task) { Task }

    context 'when user is authenticated' do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end

    context 'when user is not authenticated' do
      let(:user) { nil }

      it { is_expected.to be_falsey }
    end
  end

  describe '#create?' do
    subject { policy.create? }

    let(:project) { create :project, user: creator }
    let(:task) { create :task, project: project }
    let(:creator) { create :user }

    context 'when user is creator of the project' do
      let(:user) { creator }

      it { is_expected.to be_truthy }
    end

    context 'when user is not creator of the project' do
      let(:user) { create :user }

      it { is_expected.to be_falsey }
    end
  end
end
