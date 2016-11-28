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
      visit '/set?somekey=somevalue'
      expect(page).to have_content 'The value of "somekey" key you pased is: "somevalue"'
    end
  end

  context 'Get a key' do
    scenario 'should display a message showing the key retrieved' do
      visit '/set?somekey=somevalue'
      visit '/get?somekey=somevalue'
      expect(page).to have_content 'The value of "somekey" key has been retrieved and it is: "somevalue"'
    end
  end

end
