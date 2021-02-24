require 'rails_helper'
RSpec.describe Item, type: :model do
  before do
    @user = FactoryBot.create(:user_02)
    @category = FactoryBot.create(:category_04)
  end

  describe 'バリデーションのテスト' do
    context 'アイテムのアイテム名が空の場合' do
      it 'バリデーションにひっかる' do
        item = Item.new(name: '', brand: 'ナイキ', price: 5000, category_id:4 )
        expect(item).not_to be_valid
      end
    end
    context 'アイテムのブランド名が空の場合' do
      it 'バリデーションにひっかる' do
        item = Item.new(name: 'エアマックス', brand: '', price: 15000, category_id:4 )
        expect(item).not_to be_valid
      end
    end
    context 'アイテムの金額が空の場合' do
      it 'バリデーションにひっかる' do
        item = Item.new(name: 'エアマックス', brand: 'ナイキ', price: nil, category_id:4 )
        expect(item).not_to be_valid
      end
    end
    context 'アイテムのカテゴリーが空の場合' do
      it 'バリデーションにひっかる' do
        item = Item.new(name: 'エアマックス', brand: 'ナイキ', price: 15000, category_id:nil )
        expect(item).not_to be_valid
      end
    end
    context 'アイテムの名前・ブランド・金額・カテゴリが記載されている場合' do
      it 'バリデーションが通る' do
        user = @user
        category = @category
        item = user.items.build(name: 'エアマックス', brand: 'ナイキ', price: 15000, category:category )
        expect(item).to be_valid
      end
    end
  end
end