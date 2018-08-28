require "bookmark"

describe Bookmark do
  describe "#self.all" do
    it "returns an array of bookmarks" do
      subject = described_class
      expect(subject.all).to eq ["https://google.com", "https://apple.com", "https://netflix.com",  "https://amazon.com"]
    end
  end

end
