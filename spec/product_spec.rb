require 'capybara/rspec'
require_relative '../app'
require 'spec_helper'

Capybara.app = App

feature 'User manages a homepage' do
  scenario 'User sees Welcome on the homepage and clicks a link called Add a Product' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Product'
  end
end

