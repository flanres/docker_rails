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
       it 'パスワードがなければ無効な状態であること' do
        user.password = nil
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end
       it 'メールアドレスがなければ無効な状態であること' do
        user.email = nil
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
        it 'adminにnilを設定できないこと' do
        user.admin = nil
        user.valid?
        expect(user.errors[:admin]).to_not include("can't be blank")
      end
       it '重複したメールアドレスなら無効な状態であること' do
        user = create(:user, email: 'duplicate@rspec.com')
        dup_user = build(:user, email: 'duplicate@rspec.com')
        expect(dup_user).not_to be_valid
        expect(dup_user.errors[:email]).to include("has already been taken")
      end
   end
  end
end
