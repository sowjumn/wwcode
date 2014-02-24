class Location < ActiveRecord::Base
  has_many :admins
end