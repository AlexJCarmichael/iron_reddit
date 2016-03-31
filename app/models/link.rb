class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  
  validates :body, presence: true
  validates :title, presence: true
end
