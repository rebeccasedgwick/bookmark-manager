require "pg"

feature "Adding a bookmark" do
  scenario "User can add a bookmark" do
    visit("/")
    click_link "add"
    expect(page).to have_field "url"
    expect(page).to have_button "Save"
  end

  scenario "Bookmark is added" do
    visit("/")
    click_link "add"
    fill_in "url", with: "http://www.google.co.uk"
    click_button "Save"
    expect(page).to have_content "http://www.google.co.uk"
  end
end
