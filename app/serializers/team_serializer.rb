class TeamSerializer < ActiveModel::Serializer
  attributes :id, :city, :name, :description, :user_id
end
