class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  validates :body, presence: true
  validates :title, presence: true

  def positive_votes
    votes.where('positive >= 0').count
  end
end
