require 'rails_helper'

feature 'sign in', %(
  As a user
  I want to sign in
  So that I can track my breakable toy progress
) do
  scenario 'an existing user specifies a valid email and password' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password Confirmation', with: user.password_confirmation
    click_button 'Sign In'
    expect(page).to have_content('Welcome Back')
    expect(page).to have_content('Sign Out')


  end
  scenario 'a nonexistent email and password is supplied'
  scenario 'an existing email with the wrong password is denied access'
  scenario 'an already authenticated user cannot re-sign in'


end
