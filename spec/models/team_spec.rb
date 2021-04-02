require 'rails_helper'

RSpec.describe Team, type: :model do
  before do
    @team = FactoryBot.build(:team)
  end

  describe 'チーム情報を投稿' do
    context '投稿できるとき' do
      it '全ての欄が入力されていれば投稿できる' do
        expect(@team).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'チームの名称が空だと投稿できない' do
        @team.image = nil
        @team.valid?
        expect(@team.errors.full_messages).to include("Image can't be blank")
      end
      it '所属の市町村が選択されていないと登録できない' do
        @team.city_id = 1
        @team.valid?
        expect(@team.errors.full_messages).to include("City must be other than 1")
      end
      it 'メッセージが空だと投稿できない' do
        @team.message = ''
        @team.valid?
        expect(@team.errors.full_messages).to include("Message can't be blank")
      end
      it 'チームの代表者名が空だと投稿できない' do
        @team.representative = ''
        @team.valid?
        expect(@team.errors.full_messages).to include("Representative can't be blank")
      end
      it '代表者のメールアドレスが空だと投稿できない' do
        @team.email = ''
        @team.valid?
        expect(@team.errors.full_messages).to include("Email can't be blank")
      end
      it 'チームの画像が空だと投稿できない' do
        @team.image = nil
        @team.valid?
        expect(@team.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
