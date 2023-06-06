class Post < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :comments, dependent: :destroy
  validates :content, presence: true
end
