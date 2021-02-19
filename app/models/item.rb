class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  enum status: {"新品、未使用":1, "未使用に近い":2, "目立った傷や汚れなし":3, "やや傷や汚れあり":4, "傷や汚れあり":5, "全体的に状態が悪い":6}
end
