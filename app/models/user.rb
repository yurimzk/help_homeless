class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :participants
  has_many :events_as_participant, through: :participants, source: :event
  has_many :friends_as_asker, class_name: "Friend", foreign_key: :asker_id
  has_many :friends_as_receiver, class_name: "Friend", foreign_key: :receiver_id
  has_many :posts, dependent: :destroy
  has_many :comments
  has_many :events
  has_many :messages
end
