require 'spec_helper'
require_relative '../herbs_app'

Capybara.app = HerbsApp

feature "User can manage herbs on hand" do

  before do
    DB[:herbs].delete
  end

  scenario "User can add herbs to a page" do
    visit '/'
    expect(page).to have_no_content('Chickweed')
    fill_in 'Herb Name', with: 'Chickweed'
    click_on 'Collect'
    expect(page).to have_content('Chickweed')
  end
end