class Skill < ApplicationRecord
  belongs_to :skill_category
  has_many :user_skills
  has_many :user, through: :user_skills
  rolify

  after_create :assign_role

  
end
