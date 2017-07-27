class User < ActiveRecord::Base
  # nameカラムに関するバリデーションを作成してください
  validates :name, {presence: true}
  
  # emailカラムに関するバリデーションを作成してください
  validates :email, {presence: true, uniqueness: true}
  
  # passwordカラムにバリデーションを設定してください
  validates :password, {presence: true}
  
end
