class Location < ActiveRecord::Base
  has_many :restaurants
  geocoded_by :address
  after_validation :geocode 


























end
