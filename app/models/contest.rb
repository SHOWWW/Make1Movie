class Contest < ActiveRecord::Base
  has_many :movies
  validates :name, presence: true, length: { in: 4..10 }
  validates :article, presence: true, length: { in: 4..10 }
end
