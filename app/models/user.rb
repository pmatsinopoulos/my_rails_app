class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  validates :admin, inclusion: {in: [true, false]}
  
  # log high score
  def scored(score)
    if score > self.high_score
      $redis.zadd("highscores", score, self.id)
    end
  end
  
  # table rank
  def rank
    $redis.zrevrank("highscores", self.id) + 1
  end
  
  # high score
  def high_score
    $redis.zscore("highscores", self.id).to_i
  end
  
  # load top 3 users
  def self.top_3
    $redis.zrevrange("highscores", 0, 2).map{|id| User.find(id)}
  end
end