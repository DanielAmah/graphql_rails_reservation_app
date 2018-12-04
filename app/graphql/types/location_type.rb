module Types
  class LocationType < Types::BaseObject
    field :name, String, null: true
    field :city, String, null: true
    field :seat, Integer, null: true
  end
end
