class UserVote < ApplicationRecord
  belongs_to :user
  belongs_to :vote
  belongs_to :choice
end
