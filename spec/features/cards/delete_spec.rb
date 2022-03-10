require "rails_helper"

RSpec.feature "Delete Card" do
  let!(:card) { create :card, title: "CardForDelete" }

  scenario "delete card" do
    visit "/"
    click_link "Cards"
    find_by_id("delete-card").click

    expect(page).to_not have_text("CardForDelete")
    expect(Card.count).to eq(0)
  end
end
