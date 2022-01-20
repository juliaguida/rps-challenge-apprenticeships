require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'playing a game ' do

  PLAY_SEED = 221563

  before do
    visit '/'
    fill_in 'name', with: 'Juanita'
    click_button 'Submit'
  end
  scenario 'see the shape options' do 
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As marketeer
  # So I can play a game 
  # I want the game to choose an option
  scenario 'choose a shape' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

# As marketeer
# So I can play a game 
# I want the game to choose an option
  scenario 'game chooses a Rock' do 
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end

# As marketeer
# So I can play a game 
# I want the game to choose a random option

  scenario 'game chooses a random' do 
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end 


  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent shape #{shape.to_s.capitalize}" }
    
  end
end