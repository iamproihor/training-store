RSpec.describe 'Logout' do
let(:user) { create(:user) }

before do
  login_as(user)
  visit '/'
end

#expect(user_email.text).to eq(user.email)
it 'logs out' do
    find('li.dropdown.user_email').hover
    find('a', text: 'Logout').click
    expect(page).to have_content('Signed out successfully.')
  end
end
