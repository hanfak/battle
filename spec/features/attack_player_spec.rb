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

  scenario 'show player is dead' do
    sign_in_and_play
    9.times do
      click_button 'Attack'
      click_link 'Go back'
    end
    expect(page).to have_content 'and Jim Died!'
    expect(page).not_to have_content 'Go back'
    expect(page).to have_content 'Fight again?'
  end
end
