require "setup_test_database"
require "bookmark"
require "pg"

describe Bookmark do
  describe ".all" do
    it "a user can see bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

  describe ".create" do
    it "allows a user to create a new bookmark" do
      Bookmark.create(url: 'http://www.testwebsite.com')
      expect(Bookmark.all).to include 'http://www.testwebsite.com'
    end
  end

end
