# As a Maker
# So that I can let people know what I am doing
# I want to post a message (peep) to chitter

feature "Posting messages or 'peeps' to chitter" do
  scenario 'I can post a message to chitter' do
    visit_page('/')
    fill_in 'peep', with: "Hello, world"
    click_button 'Peep it!'

    expect(current_path).to eq '/'

    within 'ul#peeps' do
      expect(page).to have_content('Hello, world')
  end
end
