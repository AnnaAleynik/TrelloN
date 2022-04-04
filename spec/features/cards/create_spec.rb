require "rails_helper"

RSpec.feature "Create Card" do
  scenario "User creates card" do
    visit new_card_path
    fill_in "Title", with: "Title"

    click_button "Create Card"
    expect(page).to have_text("Card: Title")
    expect(Card.count).to eq(1)
  end

  scenario "Title is too short" do
    visit new_card_path
    fill_in "Title", with: "T"

    click_button "Create Card"
    expect(page).to have_text("Title is too short (minimum is 2 characters)")
    expect(Card.count).to eq(0)
  end
end
