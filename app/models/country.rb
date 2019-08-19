class Country < ApplicationRecord

  scope :search, -> (country_name) {where(name: country_name)}
  has_many :reviews
end
