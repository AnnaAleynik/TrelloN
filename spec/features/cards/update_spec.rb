require "rails_helper"

RSpec.feature "Update Card" do
  let!(:card) { create :card, title: "Old title" }

  scenario "User updates card" do
    visit edit_card_path(card)
    fill_in "Title", with: "New Title"

    click_button "Update Card"
    expect(page).to have_text("Card: New Title")
  end

  scenario "Title is too short" do
    visit edit_card_path(card)
    fill_in "Title", with: "T"

    click_button "Update Card"
    expect(page).to have_text("Title is too short (minimum is 2 characters)")
  end
end
