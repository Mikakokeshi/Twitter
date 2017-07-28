class User < ActiveRecord::Base
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  has_many :posts
  
  # インスタンスメソッドpostsを定義してください
  def posts
    return Post.where(user_id: self.id)
  end
  
end
