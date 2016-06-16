require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#parameters' do
    context 'with user_id and title' do
      user = FactoryGirl.create(:user)
      book = user.books.build(title: 'MyTitle')
      it { expect(book).to be_valid }
      it 'is equal to user id' do
        expect(book.user_id).to eq user.id
      end
    end
    context 'with user_id' do
      user = FactoryGirl.build_stubbed(:user)
      book = user.books.build
      it { expect(book).to be_invalid }
    end
    context 'with title' do
      book = FactoryGirl.build(:book)
      it { expect(book).to be_invalid }
    end
  end
end
