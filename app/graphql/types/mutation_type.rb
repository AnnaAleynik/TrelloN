module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World'
    end

    field :create_card, mutation: Mutations::CreateCard
    field :destroy_card, mutation: Mutations::DestroyCard
    field :update_card, mutation: Mutations::UpdateCard
    field :create_task, mutation: Mutations::CreateTask
    field :destroy_task, mutation: Mutations::DestroyTask
    field :update_task, mutation: Mutations::UpdateTask
  end
end
