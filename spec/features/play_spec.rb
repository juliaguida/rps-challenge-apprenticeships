require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game ' do
  before do
    visit ('/')
    fill_in :name, with: 'Juanita'
    click_button 'Submit'
  end
  scenario 'see options to play the game' do 
   expect(page).to have_button 'Rock'
   expect(page).to have_button 'Paper'
   expect(page).to have_button 'Scissors'
  end

  # As marketeer
  # So I can play a game 
  # I want to choose a option
  scenario 'choose a option' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end
end