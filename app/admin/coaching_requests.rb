ActiveAdmin.register CoachingRequest do
  permit_params :user, :submitted_at, :status, :description, :coaching_type
end
