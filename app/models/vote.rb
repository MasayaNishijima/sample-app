class Vote < ApplicationRecord
  has_many :choices, dependent: :destroy
  accepts_nested_attributes_for :choices
  DEFAULT_CHOICES = 2
end
