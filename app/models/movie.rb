class Movie < ActiveRecord::Base
  belongs_to :contest
  has_many :votes
  validates :url, presence: true, length: { minimum: 10}

end
