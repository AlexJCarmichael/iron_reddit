class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  validates :positive, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 1 }
  validates :negative, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 1
  }
end
