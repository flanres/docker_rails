require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model test' do
    let!(:user) { create(:user) }
    context '正常系' do
      it '名、メール、パスワードがあれば有効な状態であること' do
        expect(user).to be_valid
      end
    end
    context '異常系' do
      it '名がなければ無効な状態であること' do
        user.name = nil
        user.valid?
        expect(user.errors[:name]).to include("can't be blank")
      end
    end
  end
end
