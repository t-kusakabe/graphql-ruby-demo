Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :updateAddressMutation, Mutations::UpdateAddressMutation.field
end
