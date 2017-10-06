class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  
  validates :body, presence: true

  scope :for_user, ->(user) {
    where("sender_id = ? OR recipient_id = ?", user.id, user.id)
  }
end
