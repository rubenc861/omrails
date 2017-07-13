class Notice < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: {maximum: 1000}
  validates :user, presence: true
end
