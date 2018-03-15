class Company < ApplicationRecord
  has_many :writing_requests
  
  validates :name, :size, :industry, presence: true
end
