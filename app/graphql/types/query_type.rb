Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # field :customer do
  #   type Types::CustomerType
  #   argument :id, !types.ID
  #   description "Find a customer by ID"
  #   resolve ->(obj, args, ctx) {
  #     Customer.find_by(id: args[:id])
  #   }
  # end

  field :allLocations do
    type types[Types::LocationType]
    description "A list of all the locations"

    resolve -> (obj, args, ctx) {
      Location.all
    }
  end

  field :reservations_from_customer do
    type types[Types::ReservationType]
    argument :name, !types.String
    description 'Find reservations from a specific Customer'
    resolve ->(obj, args, ctx) {
      Customer.find_by(name: args[:name]).reservations
    }
  end
end
