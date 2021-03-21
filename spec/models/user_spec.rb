require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての欄が入力されていれば登録できる' do
        expect(@user).to be_valid
      end
      it '重複したメールアドレスが存在していなければ登録できる' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = 'test@test'
        expect(another_user).to be_valid
      end
      it 'パスワードとパスワード（確認用）の値が一致しているとき登録できる' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
      end
    end
  end

end
