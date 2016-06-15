require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#name' do
    context 'when blank' do
      user = User.new
      it { expect(user).to be_invalid }
    end
    context 'when present' do
      user = User.new(name: "hoge")
      it { expect(user).to be_valid }
    end
    context 'when length is 51' do
      user = User.new(name: "123456789012345678901234567890123456789012345678901")
      it { expect(user).to be_invalid }
    end
  end
end
