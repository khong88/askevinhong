class SpeakingRequest < ApplicationRecord
  belongs_to :user
  
  validates :event_name, :event_date, :description, presence: true
end
