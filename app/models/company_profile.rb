class CompanyProfile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :phone, :company_name, :company_type, :street, :suburb,
  :postcode, :country, presence: true
  mount_uploader :logo, CompanyProfileLogoUploader
  geocoded_by :formatted_address
  after_validation :geocode
  
  def contact_name
    first_name + ' ' + last_name
  end

  def formatted_address
    [street, suburb, postcode, country].join(',')
  end


end
