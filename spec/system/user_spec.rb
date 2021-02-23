require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do
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
  end
  describe 'ユーザー登録のテスト' do
    context 'ユーザーを新規作成した場合' do
      it '作成したユーザーのマイページが表示される' do
        visit new_user_registration_path
       
        fill_in 'user_email', with: 'user01@test.com'
        fill_in 'user_password', with: 'password'
        fill_in 'user_password_confirmation', with: 'password'
        fill_in 'user_profile_attributes_username', with: 'ユーザー01'

        click_button 'アカウント登録'
        expect(page).to have_content 'ユーザー01'
        expect(page).to have_content 'user01@test.com'
      end
    end
  

  end
  describe 'ログイン機能のテスト' do
    context 'ログイン画面よりログインした場合' do
      it '自分の詳細画面(マイページ)が表示される' do
        visit new_user_session_path
        fill_in 'user_email', with: 'user02@test.com'
        fill_in 'user_password', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content 'ようこそ、user02@test.comさん'
        expect(page).to have_content 'ユーザー2'
      end
    end
    context 'ログインが済んでいる場合' do
        before do
          visit new_user_session_path
          fill_in 'user_email', with: 'user02@test.com'
          fill_in 'user_password', with: 'password'
          click_button 'ログイン'
        end
      it 'ユーザー一覧画面に移動できる' do
        click_link 'ユーザー一覧'
        expect(page).to have_content 'ユーザー一覧'
        expect(page).to have_content 'ユーザー検索'
        expect(page).to have_content 'ユーザー4'
        sleep 1
      end
      it 'ユーザー一覧より他のユーザーの詳細ページに移動できる' do
        click_link 'ユーザー一覧'
        expect(page).to have_content 'ユーザー一覧'
        expect(page).to have_content 'ユーザー4'
        click_link 'ユーザー4'
        sleep 1
        expect(page).to have_content 'プロフィール'
        expect(page).to have_content 'ユーザー4'
        expect(page).to have_content '女性'
        expect(page).to have_content 'ユーザー4です!'
      end
      it 'ユーザー情報の編集ができる' do
        click_link '基本情報編集'
        expect(page).to have_content 'ユーザー編集'
        fill_in 'user_email', with: 'user99@test.com'
        click_button '編集する'
        expect(page).to have_content 'プロフィールを編集しました'
        expect(page).to have_content 'ようこそ、user99@test.comさん'
        sleep 1
      end
      it 'ユーザープロフィールの編集ができる' do
        click_link 'プロフィール編集'
        expect(page).to have_content 'プロフィール編集'
        fill_in 'profile_last_name', with: '山田'
        fill_in 'profile_first_name', with: '花子'
        fill_in 'profile_birthday', with: '002000-01-01'
        fill_in 'profile_introduction', with: '山田花子です'
        click_button '編集する'
        expect(page).to have_content 'プロフィールを編集しました'
        expect(page).to have_content '山田'
        expect(page).to have_content '花子'
        expect(page).to have_content '2000-01-01'
        expect(page).to have_content '山田花子です'
        sleep 4
        # save_and_open_page

      end
    end
  end
end