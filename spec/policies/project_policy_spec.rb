require 'rails_helper'

RSpec.describe 'ProjectPolicy', type: :policy do
	subject(:policy){ProjectPolicy.new(user, project)}

	let(:project) {Project.new}

	describe "@index?" do
		subject {policy.index?}

		let(:project){Project}

		context 'when  user is not auth' do
			let(:user){ nil }

			it {is_expected.to eq(true) }			
		end
		context 'when  user is auth' do
			let(:user){ User.new }

			it {is_expected.to eq(true) }			
		end
	end

	describe "@show?" do 
		subject {policy.show?}

		context 'whe  user is not auth' do
			let(:user){ nil }

			it {is_expected.to eq(false) }			
		end
		context 'whe  user is auth' do
			let(:user){ User.new }

			it {is_expected.to eq(true) }			
		end
	end
	describe '#edit?' do
    pending 'implement me'
  end
	describe "#create?"
	describe "#delete?"
	describe "#update?" do
		subject {policy.update?}

		let(:user) {User.new(id: 42)}

		context 'when  user is not created of the project' do
			it {is_expected.to eq(false) }			
		end
		context 'when  user is not created of the project' do
			let(:project){Project.new(user: user)}
			it {is_expected.to eq(true) }			
		end
	end
	describe "@new?"
end