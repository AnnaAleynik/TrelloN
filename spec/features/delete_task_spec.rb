require 'rails_helper'

RSpec.feature 'Delete Task' do
  before do
    Card.create(title: 'CardForDelete')
  end

  scenario 'delete task' do
    visit '/'
    click_link 'Cards'
    find_by_id('delete-card').click
    # page.driver.browser.switch_to.alert.accept

    expect(page).to_not have_text('CardForDelete')
  end
end
