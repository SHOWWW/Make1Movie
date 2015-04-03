class Vote < ActiveRecord::Base
  belongs_to :movie
  validates :name, presence: true
end
