require 'rails_helper'

feature 'sign up', %(
  As an unauthenticated user
  I want to sign up
  So that I can track my breakable toy progress
) do

  scenario 'specifying valid and required information' do
    visit root_path
    click_link 'Sign Up'

    fill_in 'First Name', with: 'Jon'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Zip Code', with: '19103'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Username', with: 'username'
    fill_in 'user_password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'

    click_button 'Sign Up'

    expect(page).to have_content("You're in!")
    expect(page).to have_content("Sign Out")
  end
end