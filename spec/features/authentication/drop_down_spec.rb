RSpec.describe 'Dropdown page' do
  before {visit '/'}

  it 'default option is selected' do
    # expect(page).to have_select('button', selected: 'Newest first')
    within('div.dropdowns') do
      expect(page).to have_content('Newest first')
      find('div.dropdown').click
      find('a', text: 'Title Z-A').click
      sleep 5
    end
  end
end
