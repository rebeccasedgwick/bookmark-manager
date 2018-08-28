feature "Viewing bookmarks" do
  scenario "View list of bookmarks" do
    visit("/bookmarks")
    expect(page).to have_content "https://google.com"
    expect(page).to have_content "https://apple.com"
    expect(page).to have_content "https://netflix.com"
    expect(page).to have_content "https://amazon.com"    
  end
end
