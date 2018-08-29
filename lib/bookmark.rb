require "pg"

class Bookmark

  def self.all(database = "bookmark_manager")
    connection = PG.connect(dbname: database)
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

end
