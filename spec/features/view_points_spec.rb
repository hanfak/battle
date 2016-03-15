feature 'view hit points' do
  scenario 'show hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jim: 100 HP'
  end
end
