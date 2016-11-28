require 'rails_helper'

feature 'keys' do
  context 'no keys have been added' do
    scenario 'should display a prompt to add a key' do
      visit '/keys'
      expect(page).to have_content 'You did not add a key'
      expect(page).to have_link 'Add a key'
    end
  end

  context 'Set a key' do
    scenario 'should display a message showing the key you passed' do
      visit '/set?bluekey=bluevalue'
      expect(page).to have_content 'The value of "bluekey" key you pased is: "bluevalue"'
    end
  end

  context 'Get a key' do
    scenario 'should display a message showing the key retrieved' do
      visit '/set?greenkey=greenvalue'
      visit '/get?key=greenkey'
      expect(page).to have_content 'The value of the "greenkey" key has been retrieved and it is: "greenvalue"'
    end
  end

end
