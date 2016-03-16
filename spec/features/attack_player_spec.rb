feature 'attack player 2' do
  scenario 'show confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jim attacked by Bob'
  end

  scenario 'show reduced hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Go back'
    expect(page).to have_content 'Jim: 80 HP'
  end
end
