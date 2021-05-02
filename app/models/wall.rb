class Wall < ApplicationRecord
  # One to many between User and Wall
  belongs_to :user
end
