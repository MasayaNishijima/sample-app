class Choice < ApplicationRecord
  belongs_to :vote
  has_many :user_votes
end
