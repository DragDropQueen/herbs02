require 'spec_helper'
require_relative '../herb_app'

Capybara.app = HerbApp

feature "User can manage herbs on hand" do
  scenario "User can add herbs to a page" do
    visit '/'
    expect(page).to have_no_content('Chickweed')
    fill_in 'Herb Name', with: 'Chickweed'
    click_on 'Collect'
    expect(page).to have_content('Chickweed')
  end
end