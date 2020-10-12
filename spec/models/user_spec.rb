require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー情報登録' do
    before do
      @user = FactoryBot.build(:user)
    end
    context 'ユーザー登録できる時' do
      it 'name、email、password、password_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordが半角英数混合かつ6文字以上であれば登録できる' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aaa000'
        expect(@user).to be_valid
      end
    end
    context 'ユーザー登録できない時' do
      it 'nameが必須であること' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nameを入力してください")
      end
      it 'emailが必須であること' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'emailが一意性であること' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'emailは@を含む必要があること' do
        @user.email = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it 'passwordが必須であること' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordは6文字以上であること' do
        @user.password = '00000'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordは半角英数字混合であること' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')

        @user.password = '000000'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'password confirmationが必須であること' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
    end
  end
end
