feature 'changes turns' do
  scenario 'show confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Go back'
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked by Jim'
  end

  scenario 'show reduced hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Go back'
    click_button 'Attack'
    click_link 'Go back'
    expect(page).to have_content 'Bob: 80 HP'
  end
end
