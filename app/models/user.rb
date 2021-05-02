class User < ApplicationRecord
  # One to many between User and Wall
  has_many :walls

  before_create -> { self.avatar_color = User.generate_random_avatar_color }

  def self.generate_random_avatar_color
    User::AVATAR_COLOR.sample
  end

  AVATAR_COLOR = [
    "30D0FC", "FC3D7A", "23FCB4", "FC810A", "17FC2E"
  ].freeze

end
