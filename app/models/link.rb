class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  validates :body, presence: true
  validates :title, presence: true

  after_create :create_owner_vote

  def positive_votes
    self.votes.where('positive > 0').count
  end

  def negative_votes
    self.votes.where('negative > 0').count
  end

  def aggregate_votes
    self.positive_votes - self.negative_votes
  end

  def create_owner_vote
    Vote.create!(link_id: self.id, user_id: self.user_id, positive: 1, negative: 0)
  end
end
