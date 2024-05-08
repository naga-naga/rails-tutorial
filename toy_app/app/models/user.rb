class User < ApplicationRecord
  # 一人のユーザは複数の投稿を持つ
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true
end
