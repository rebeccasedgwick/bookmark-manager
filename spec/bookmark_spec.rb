require "setup_test_database"
require "bookmark"

describe Bookmark do
  describe ".all" do
    it "a user can see bookmarks" do
      # 
      # conex = PG.connect(dbname: "bookmark_manager_test")
      # conex.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com'), ('http://www.makersacademy.com'), ('http://www.destroyallsoftware.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

end
