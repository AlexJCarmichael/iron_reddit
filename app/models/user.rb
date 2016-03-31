class User < ActiveRecord::Base
  has_many :votes
  has_many :links
  
  validates :user_name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
