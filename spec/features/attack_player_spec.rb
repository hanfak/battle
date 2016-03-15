feature 'attack player 2' do
  scenario 'show confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Jim'
  end
end
