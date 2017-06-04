# As a Maker
# So that I can let people know what I am doing
# I want to post a message (peep) to chitter

feature "Posting messages or 'peeps' to chitter" do
  scenario 'I can post a message to chitter' do
    visit('/')
    click_button 'Peep'
    fill_in 'message', with: "Hello, world"
    click_button 'Peep it!'

    expect(current_path).to eq '/'

    within 'ul#peep_feed' do
      expect(page).to have_content('Hello, world')
    end
  end
end
