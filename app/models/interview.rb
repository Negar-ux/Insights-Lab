class Interview < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :notes,  dependent: :destroy
  validates :title,:date,:description, presence: true
end
