class Note < ApplicationRecord
  belongs_to :interview
  belongs_to :user
  validates :insight, presence: true
end
