class Event < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: %i[title description], using: {
    tsearch: { prefix: true }
  }
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :participants
  has_many :users, through: :participants
  has_one_attached :photo
  geocoded_by :address

  validates :title, :description, :event_date, :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
