module Types
  class ReservationType < Types::BaseObject
    field :time, String, null: true
    field :seats, Integer, null: true
    field :customer, Types::CustomerType, null: true
    field :location, Types::LocationType, null: true
  end
end
