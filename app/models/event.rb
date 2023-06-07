class Event < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :participants
  has_many :users, through: :participants
  has_one_attached :photo

  validates :title, :description, :event_date, presence: true
end
