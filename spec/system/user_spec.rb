require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do
  before do
    @user2 = FactoryBot.create(:user_02)
    @user3 = FactoryBot.create(:user_03)
    @user4 = FactoryBot.create(:user_04)
    FactoryBot.create(:profile_second, user:@user2)
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
  end
end