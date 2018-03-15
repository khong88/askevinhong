class WritingRequest < ApplicationRecord
  belongs_to :user
  belongs_to :company
  
  validates :submitted_at, :writing_type, :description, presence: true
end
