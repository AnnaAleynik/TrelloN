require "rails_helper"

RSpec.describe Mutations::CreateCard do
  let(:query) do
    <<-GRAPHQL
      mutation {
        create_card(
          title: "Title"
        ) {
          id
          title
        }
      }
    GRAPHQL
  end

  it "creates a card" do
    expect do
      post "/graphql"
    end.to change { Card.count }.by(1)
  end
end
