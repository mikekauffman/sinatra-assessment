require 'capybara/rspec'
require_relative '../app'
require 'spec_helper'

Capybara.app = App

feature 'User manages a homepage' do
  scenario 'User can enter a product into form and click create product' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Product'
    fill_in 'new_product', :with => 'Applesauce'
    click_on 'Create Product'
  end
end

