feature "Viewing bookmarks" do
  scenario "View list of bookmarks" do

    # conex = PG.connect(dbname: "bookmark_manager_test")
    # conex.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com'), ('http://www.makersacademy.com'), ('http://www.destroyallsoftware.com');")


    visit("/bookmarks")
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end
