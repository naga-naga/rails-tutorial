class Micropost < ApplicationRecord
  # 一つの投稿は一人のユーザにのみ属する
  belongs_to :user
  validates :content, length: { maximum: 140 },
                      presence: true # コンテンツが存在しているかの確認
end
