require 'rails_helper'

feature 'restaurants' do

  context 'no restaurants have been added' do
    scenario 'will show a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to_have_content "No restaurants added"
      expect(page).to_have_link "Add Restaurant"
    end
  end
end