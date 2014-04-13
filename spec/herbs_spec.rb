require 'spec_helper'
require_relative '../herbs_app'

Capybara.app = HerbsApp

feature "User can manage herbs on hand" do

  before do
    DB[:herbs].delete
  end

  scenario "User can add herbs and herb parts to a page" do
    visit '/'
    expect(page).to have_no_content('Chickweed')
    fill_in 'Herb Name', with: 'Chickweed'
    fill_in 'Herb Part', with: 'aerial parts'
    click_on 'Collect'
    expect(page).to have_content('Chickweed')
    expect(page).to have_content('aerial parts')
  end
end