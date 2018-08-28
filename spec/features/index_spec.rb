feature "Testing index page" do
  scenario "App can run index page" do
    visit("/")
    expect(page).to have_content "Hello, World!"
  end
end
