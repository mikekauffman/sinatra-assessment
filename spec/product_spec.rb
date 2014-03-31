require 'capybara/rspec'
require_relative '../app'
require 'spec_helper'

Capybara.app = App

feature 'User manages a homepage' do
  scenario 'User can create a product to display on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Product'
    fill_in 'new_product', :with => 'Applesauce'
    click_on 'Create Product'
    expect(page).to have_content 'Applesauce'
    expect(page).to have_content 'Welcome'
  end
end

