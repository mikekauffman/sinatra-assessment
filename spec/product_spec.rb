require 'capybara/rspec'
require_relative '../app'
require 'spec_helper'

Capybara.app = App

feature 'User manages a homepage' do
  scenario 'User sees Welcome on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end

