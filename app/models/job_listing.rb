class JobListing < ApplicationRecord
  belongs_to :user
  belongs_to :company_profile
  has_many :job_listing_skills
  has_many :skills, through: :job_listing_skills

  
end
