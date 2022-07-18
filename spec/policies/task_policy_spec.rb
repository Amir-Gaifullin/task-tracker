require 'rails_helper'

RSpec.describe 'TaskPolicy', type: :policy do
  subject(:policy) { TaskPolicy.new(user, task) }

  describe '#index?' do
    subject { policy.index? }

    let(:task) { Task }

    context 'when user is authenticated' do
      let(:user) { create :user }

      it { is_expected.to be(true) }
    end

    context 'when user is not authenticated' do
      let(:user) { nil }

      it { is_expected.to be(false) }
    end
  end

  describe '#create?' do
    subject { policy.create? }

    let(:project) { create :project, user: creator }
    let(:task) { create :task, project: project, user: user }
    let(:user) { create :user }

    context 'when user is creator of the project' do
      let(:creator) { user }

      it { is_expected.to be(true) }
    end

    context 'when user is not creator of the project' do

      let(:creator) { nil }

      it { is_expected.to be(false) }
    end
  end
end
