require 'pg'

def setup_test_database
  conex = PG.connect(dbname: "bookmark_manager_test")
  conex.exec("TRUNCATE bookmarks;")

  conex.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com'), ('http://www.makersacademy.com'), ('http://www.destroyallsoftware.com');")
end
