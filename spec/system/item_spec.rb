require 'rails_helper'
RSpec.describe 'アイテム管理機能', type: :system do
  before do
    @user2 = FactoryBot.create(:user_02)
    @user3 = FactoryBot.create(:user_03)
    @user4 = FactoryBot.create(:user_04)
    FactoryBot.create(:profile_second, user:@user2)
    FactoryBot.create(:profile_third, user:@user3)
    FactoryBot.create(:profile_fourth, user:@user4)
    FactoryBot.create(:category_01)
    FactoryBot.create(:category_02)
    FactoryBot.create(:category_03)
    @category = FactoryBot.create(:category_04)
    @item = FactoryBot.create(:Item_01, category:@category, user:@user2)
    @item2 = FactoryBot.create(:Item_02, category:@category, user:@user3)
  end

  describe '新規作成機能' do
    let!(:login) {
      visit new_user_session_path
      fill_in 'user_email', with: 'user02@test.com'
      fill_in 'user_password', with: 'password'
      click_button 'ログイン'
    }
    context '投稿を新規作成した場合' do
      it '作成した投稿が表示される' do
        click_link '投稿する'
        expect(page).to have_content '新規投稿'
        fill_in 'item_name', with: 'カットソー'
        fill_in 'item_brand', with: '無印良品'
        select 'トップス', from: 'item[category_id]'
        select '新品、未使用', from: 'item[status]'
        select '東京都', from: 'item[delivery_from]'
        fill_in 'item_price', with: '2000'
        fill_in 'item_content', with: 'テスト投稿'
        click_button '投稿する'
        expect(page).to have_content '投稿を作成しました'
        expect(page).to have_content 'アイテム詳細'
        expect(page).to have_content 'カットソー'
        expect(page).to have_content '無印良品'
        expect(page).to have_content 'トップス'
        expect(page).to have_content '東京都'
        expect(page).to have_content '2,000円'
        expect(page).to have_content 'テスト投稿'
        # save_and_open_page 
        sleep 1
      end
    end
  end
  describe '一覧表示機能' do
    let!(:login) {
      visit new_user_session_path
      fill_in 'user_email', with: 'user02@test.com'
      fill_in 'user_password', with: 'password'
      click_button 'ログイン'
    }
    context '一覧画面に遷移した場合' do
      it '作成済みのタスク一覧が表示される' do
        visit items_path
        expect(page).to have_content '投稿一覧'
        expect(page).to have_content 'トレーナー'
        expect(page).to have_content 'パーカー/テスト'
        expect(page).to have_content 'ユーザー2'
        sleep 2

      end
    end
  end
  describe '編集機能' do
    let!(:login) {
      visit new_user_session_path
      fill_in 'user_email', with: 'user02@test.com'
      fill_in 'user_password', with: 'password'
      click_button 'ログイン'
    }
    context '投稿を編集した場合' do
      it '編集した内容が反映され表示される' do
        visit edit_item_path(@item)
        expect(page).to have_content '投稿編集'
        fill_in 'item_name', with: 'シャツ/無印'
        fill_in 'item_brand', with: '無印良品'
        select '傷や汚れあり', from: 'item[status]'
        select '神奈川県', from: 'item[delivery_from]'
        fill_in 'item_content', with: '無印良品に変更しました'
        click_button '編集する'
        expect(page).to have_content '投稿を編集しました'
        expect(page).to have_content 'シャツ/無印'
        expect(page).to have_content '無印良品'
        expect(page).to have_content '神奈川県'
        expect(page).to have_content '無印良品に変更しました'
        sleep 1

      end
    end
  end
  describe '削除機能' do
    let!(:login) {
      visit new_user_session_path
      fill_in 'user_email', with: 'user02@test.com'
      fill_in 'user_password', with: 'password'
      click_button 'ログイン'
    }
    context 'アイテム詳細から削除ボタンを押した場合' do
      it '投稿が削除される' do
        visit item_path(@item)
        expect(page).to have_content 'アイテム詳細'
       
        page.accept_confirm do
          find(".fa-trash-alt").click
          sleep 1
        end
        expect(page).to have_content '投稿を削除しました'
        sleep 1

      end
    end
  end
  describe '決済機能' do
    let!(:login) {
      visit new_user_session_path
      fill_in 'user_email', with: 'user02@test.com'
      fill_in 'user_password', with: 'password'
      click_button 'ログイン'
    }
    context '他のユーザー投稿詳細に遷移した場合' do
      it '購入画面が表示され遷移できる' do
        visit item_path(@item2)
        expect(page).to have_content 'アイテム詳細'
        expect(page).to have_content '投稿者'
        expect(page).to have_content 'ユーザー3'
        click_link '購入画面にすすむ'
        sleep 5
        click_button 'カードで支払う'
        

        sleep 5
      end
    end
  end
end