class Country < ApplicationRecord
  scope :search, -> (country_name) {where(name: country_name)}
  has_many :reviews

  scope :most_reviews, -> {(
    select("countries.id, countries.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("countries.id")
    .order("reviews_count DESC")
    # .limit(1)
    )}

  scope :most_rates, -> {(
    select("countries.id, countries.name, avg(reviews.rating) as reviews_rating")
    .joins(:reviews)
    .group("countries.id")
    .order("reviews_rating DESC")
    # .limit(1)
    )}

end
