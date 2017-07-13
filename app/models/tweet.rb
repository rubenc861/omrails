class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: {maximum: 40}
  validates :user, presence: true
end
