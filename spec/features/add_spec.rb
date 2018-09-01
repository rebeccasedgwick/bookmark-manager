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

  scenario "Flash error message if invalid url entered" do
   visit("/")
   click_link "add"
   fill_in "url", with: "For testing: this is not a url"
   click_button "Save"
   expect(page).to have_content ("Error: please enter a valid URL")
 end

 scenario "Bookmark name is added" do
   visit("/")
   click_link "add"
   fill_in "url", with: "http://www.google.co.uk"
   fill_in "name", with: "Google UK"
   click_button "Save"
   expect(page).to have_content "Google UK"
 end

end
