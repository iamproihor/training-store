RSpec.describe 'Forgot password' do
  let!(:user) { create(:user) }
  before {visit '/users/password/new'}

  it 'checks page title' do

    expect(page).to have_css('h3', text: 'Forgot your password?')
  end
  it 'email field should be visible' do
    expect(page).to have_field('user_email')
  end

  it 'Sends restore password email' do
    fill_in('user[email]', with: user.email)
    click_on('Send me reset password instructions')


    expect(page).to have_current_path('/users/sign_in')
    expect(page).to have_content('You will receive an email with instructions on how to reset your password in a few minutes.')
  end



end
