class User < ApplicationRecord
  has_many :coaching_requests
  has_many :speaking_requests
end
