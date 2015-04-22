require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the rps path', {:type => :feature}) do
  it('processes user input and checks to see who wins in rock paper scissors') do
    visit('/')
    fill_in('playeronechoice', :with => 'rock')
    fill_in('playertwochoice', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content('Player 1 wins')
  end
end
