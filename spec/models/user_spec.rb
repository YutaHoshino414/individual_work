require 'rails_helper'
RSpec.describe User, type: :model do

  describe 'バリデーションのテスト' do
    context 'userのEメールが空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(email: '', password:'password' )
        expect(user).not_to be_valid
      end
    end
    context 'ユーザーのパスワードが空の場合' do
      it 'バリデーションにひっかる' do
      user = User.new(email:"test@example.com", password: '')
      expect(user).not_to be_valid
      end
    end
    context 'Eメール・パスワードが記載されている場合' do
      it 'バリデーションが通る' do
      user = User.new(email:"test@example.com", password: 'password')
      expect(user).to be_valid
      end
    end
    context 'ユーザーのEメールが30字を超えた場合' do
      it 'バリデーションにひっかる' do
      user = User.new(email:"ttttttttttttttttttest@example.com", password: 'password')
      expect(user).not_to be_valid
      end
    end
    context 'ユーザーのEメールが30字以内である場合' do
      it 'バリデーションが通る' do
      user = User.new(email:"ttttttttttttttest@example.com", password: 'password')
      expect(user).to be_valid
      end
    end
  end
end