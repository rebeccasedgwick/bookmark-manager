require "web_helpers"
require "bookmark"

describe Bookmark do
  let(:database) { "bookmark_manager_test" }

  before { empty_and_refill_database }

  describe ".all" do
    it "returns an array of bookmarks" do
      subject = described_class
      expect(subject.all(database)).to eq ["http://www.google.com",  "http://www.makersacademy.com", "http://www.destroyallsoftware.com"]
    end
  end

end
