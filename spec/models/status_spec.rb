require 'rails_helper'

RSpec.describe Status, type: :model do
  describe 'ステータス情報入力' do
    before do
      @status = FactoryBot.build(:status)
    end

    context '入力できる時' do
      it 'dateが存在すれば登録できる' do
        expect(@status).to be_valid
      end
      it 'feeling_id、sleeping_id、happiness_id、taking_idが空でも登録できる' do
        @status.feeling_id = nil
        @status.sleeping_id = nil
        @status.happiness_id = nil
        @status.taking_id = nil
        expect(@status).to be_valid
      end
    end
    context 'ユーザー登録できない時' do
      it 'dateが空だと登録できない' do
        @status.date = nil
        @status.valid?
        expect(@status.errors.full_messages).to include("Dateを入力してください")
      end
    end
  end
end
