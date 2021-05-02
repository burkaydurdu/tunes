class WallSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at

  has_one :user
end
