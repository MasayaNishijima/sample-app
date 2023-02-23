class Vote < ApplicationRecord
  has_many :choices
  has_many :user_votes
  has_many :users, through: :user_votes

  accepts_nested_attributes_for :choices
  DEFAULT_CHOICES = 2.freeze
end
