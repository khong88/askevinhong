class WritingRequest < ApplicationRecord
  belongs_to :user
  belongs_to :company
end
