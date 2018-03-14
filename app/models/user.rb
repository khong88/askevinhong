class User < ApplicationRecord
  has_many :coaching_requests
  has_many :speaking_requests
  has_many :writing_requests
  
  validates :phone, presence: true, format: { with: /\d+/, message: "bad format" }
  validates :name, presence: true
  validates :email, 
    presence: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
