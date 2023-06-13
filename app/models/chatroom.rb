class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :friend, dependent: :destroy
end
