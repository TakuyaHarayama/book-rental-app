require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#name' do
    context 'when present' do
      user = FactoryGirl.build(:user)
      it { expect(user).to be_valid }
    end
    context 'when blank' do
      user = FactoryGirl.build(:no_name)
      it { expect(user).to be_invalid }
    end
    context 'when lengths over' do
      user = FactoryGirl.build(:over_name)
      it { expect(user).to be_invalid }
    end
  end
end
