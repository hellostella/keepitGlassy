class Restaurant < ActiveRecord::Base
  belongs_to :location
  has_many :menus
end
