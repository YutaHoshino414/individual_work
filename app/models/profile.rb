class Profile < ApplicationRecord
  belongs_to :user
  enum sex:{ 未設定: 0, 女性: 1, 男性: 2 }
end
